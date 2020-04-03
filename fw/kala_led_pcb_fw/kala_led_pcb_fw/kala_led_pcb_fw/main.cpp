// This is AVR code for driving the RGB LED strips from Pololu.
//
// It allows complete control over the color of an arbitrary number of LEDs.
// This implementation disables interrupts while it does bit-banging with
// inline assembly.
//
// This version uses "cbi" and "sbi" instructions, which only work on registers
// in the first 32 bytes of I/O memory.  For a more flexible version of this
// that can work on any register, see led_strip_ds.c.

// This line specifies the frequency your AVR is running at.
// This code supports 20 MHz, 16 MHz and 8MHz
#define F_CPU 8000000

// These lines specify what pin the LED strip is on.
// You will either need to attach the LED strip's data line to PC0 or change these
// lines to specify a different pin.
#define LED_STRIP_PORT PORTA
#define LED_STRIP_DDR  DDRA
#define LED_STRIP_PIN  3

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdint.h>

// The rgb_color struct represents the color for an 8-bit RGB LED.
// Examples:
//   Black:      (rgb_color){ 0, 0, 0 }
//   Pure red:   (rgb_color){ 255, 0, 0 }
//   Pure green: (rgb_color){ 0, 255, 0 }
//   Pure blue:  (rgb_color){ 0, 0, 255 }
//   White:      (rgb_color){ 255, 255, 255}
typedef struct rgb_color
{
	uint8_t red, green, blue;
} rgb_color;

typedef struct eight_bit_color
{
	uint8_t red   : 3;
	uint8_t green : 3;
	uint8_t blue  : 2;	
} eight_bit_color;

rgb_color convert_to_rgb(eight_bit_color c)
{
	return (rgb_color){c.red * 36, c.green * 36, c.blue * 85};
}

// led_strip_write sends a series of colors to the LED strip, updating the LEDs.
// The colors parameter should point to an array of rgb_color structs that hold
// the colors to send.
// The count parameter is the number of colors to send.
// This function takes about 1.1 ms to update 30 LEDs.
// Interrupts must be disabled during that time, so any interrupt-based library
// can be negatively affected by this function.
// Timing details at 20 MHz:
//   0 pulse  = 400 ns
//   1 pulse  = 850 ns
//   "period" = 1300 ns
// Timing details at 16 MHz:
//   0 pulse  = 375 ns
//   1 pulse  = 812.5 ns
//   "period" = 1500 ns
void __attribute__((noinline)) led_strip_write(eight_bit_color * colors, uint16_t count)
{
	// Set the pin to be an output driving low.
	LED_STRIP_PORT &= ~(1<<LED_STRIP_PIN);
	LED_STRIP_DDR |= (1<<LED_STRIP_PIN);

	cli();   // Disable interrupts temporarily because we don't want our pulse timing to be messed up.
	while (count--)
	{
		rgb_color c = convert_to_rgb(*colors++);
		// Send a color to the LED strip.
		// The assembly below also increments the 'colors' pointer,
		// it will be pointing to the next color at the end of this loop.
		asm volatile (
		"ld __tmp_reg__, %a0+\n"
		"ld __tmp_reg__, %a0\n"
		"rcall send_led_strip_byte%=\n"  // Send red component.
		"ld __tmp_reg__, -%a0\n"
		"rcall send_led_strip_byte%=\n"  // Send green component.
		"ld __tmp_reg__, %a0+\n"
		"ld __tmp_reg__, %a0+\n"
		"ld __tmp_reg__, %a0+\n"
		"rcall send_led_strip_byte%=\n"  // Send blue component.
		"rjmp led_strip_asm_end%=\n"     // Jump past the assembly subroutines.

		// send_led_strip_byte subroutine:  Sends a byte to the LED strip.
		"send_led_strip_byte%=:\n"
		"rcall send_led_strip_bit%=\n"  // Send most-significant bit (bit 7).
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"
		"rcall send_led_strip_bit%=\n"  // Send least-significant bit (bit 0).
		"ret\n"

		// send_led_strip_bit subroutine:  Sends single bit to the LED strip by driving the data line
		// high for some time.  The amount of time the line is high depends on whether the bit is 0 or 1,
		// but this function always takes the same time (2 us).
		"send_led_strip_bit%=:\n"
		#if F_CPU == 8000000
		"rol __tmp_reg__\n"                      // Rotate left through carry.
		#endif
		"sbi %2, %3\n"                           // Drive the line high.

		#if F_CPU != 8000000
		"rol __tmp_reg__\n"                      // Rotate left through carry.
		#endif

		#if F_CPU == 16000000
		"nop\n" "nop\n"
		#elif F_CPU == 20000000
		"nop\n" "nop\n" "nop\n" "nop\n"
		#elif F_CPU != 8000000
		#error "Unsupported F_CPU"
		#endif

		"brcs .+2\n" "cbi %2, %3\n"              // If the bit to send is 0, drive the line low now.

		#if F_CPU == 8000000
		"nop\n" "nop\n"
		#elif F_CPU == 16000000
		"nop\n" "nop\n" "nop\n" "nop\n" "nop\n"
		#elif F_CPU == 20000000
		"nop\n" "nop\n" "nop\n" "nop\n" "nop\n"
		"nop\n" "nop\n"
		#endif

		"brcc .+2\n" "cbi %2, %3\n"              // If the bit to send is 1, drive the line low now.

		"ret\n"
		"led_strip_asm_end%=: "
		: "=b" (c)
		: "0" (colors),         // %a0 points to the next color to display
		"I" (_SFR_IO_ADDR(LED_STRIP_PORT)),   // %2 is the port register (e.g. PORTC)
		"I" (LED_STRIP_PIN)     // %3 is the pin number (0-8)
		);

		// Uncomment the line below to temporarily enable interrupts between each color.
		//sei(); asm volatile("nop\n"); cli();
	}
	sei();          // Re-enable interrupts now that we are done.
	_delay_us(80);  // Send the reset signal.
}

#define LED_COUNT 256
eight_bit_color colors[LED_COUNT];

int main()
{
	uint16_t time = 0;
	while (1)
	{
		for (uint16_t i = 0; i < LED_COUNT; i++)
		{
			colors[i] = (eight_bit_color){ 7, 0, 0 };
		}

		led_strip_write(colors, LED_COUNT);

		_delay_ms(1000);
		
		for (uint16_t i = 0; i < LED_COUNT; i++)
		{
			colors[i] = (eight_bit_color){ 0, 7, 0 };
		}

		led_strip_write(colors, LED_COUNT);

		_delay_ms(1000);
		
		for (uint16_t i = 0; i < LED_COUNT; i++)
		{
			colors[i] = (eight_bit_color){ 0, 0, 3 };
		}

		led_strip_write(colors, LED_COUNT);

		_delay_ms(1000);
	}
}
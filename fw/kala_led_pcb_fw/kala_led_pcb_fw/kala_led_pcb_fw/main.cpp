/**
 * Copyright (c) 2018, ?ukasz Marcin Podkalicki <lpodkalicki@gmail.com>
 * ATtiny85/003
 * Rainbow on LEDs with WS2811(12V)/WS2812(5V) driver.
 * I this example PB0 is a data pin. You change it by editing ws2812_config.h file.
 */
#define F_CPU 16000000

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "WS2813.cpp"

#define	PIXEL_NUM	(256)

struct cRGB led[PIXEL_NUM];

int main(void)
{
	uint8_t i;
	/* loop */
	while(1)
	{
		for (i = 0; i < PIXEL_NUM; i++)
		{
			led[i].r=255; led[i].g=0; led[i].b=0;    // Write red to array
		}
		set_main_display(led);
		_delay_ms(500);                         // wait for 500ms.


		for (i = 0; i < PIXEL_NUM; i++)
		{
			led[0].r=0; led[0].g=255; led[0].b=0;			// green
		}

		set_main_display(led);
		_delay_ms(500);

		for (i = 0; i < PIXEL_NUM; i++)
		{
			led[0].r=0; led[0].g=0; led[0].b=255;		// blue
		}

		set_main_display(led);
		_delay_ms(500);
	}
}

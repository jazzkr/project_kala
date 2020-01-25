/*
 * ws2813.h
 *
 * Created: 2020-01-19 1:50:48 PM
 *  Author: krisz
 */ 


#ifndef WS2813_H_
#define WS2813_H_

void inline ws2812_setleds(compressed_px *ledarray, unsigned int leds);
void inline ws2812_setleds_pin(compressed_px *ledarray, unsigned int leds, uint8_t pinmask);
void ws2812_sendarray(uint8_t *array, uint16_t length);
void inline ws2812_sendarray_mask(uint8_t *array, uint16_t length, uint8_t pinmask);

#endif
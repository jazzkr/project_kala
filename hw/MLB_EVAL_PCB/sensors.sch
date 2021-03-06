EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U?
U 1 1 5EDD8F63
P 1750 1550
AR Path="/5EDC2390/5EDD8F63" Ref="U?"  Part="1" 
AR Path="/5E100A35/5EDD8F63" Ref="U8"  Part="1" 
F 0 "U8" H 1750 1792 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 1750 1701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1750 1750 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 1850 1300 50  0001 C CNN
	1    1750 1550
	1    0    0    -1  
$EndComp
Text Notes 700  900  0    118  ~ 24
3.3V LDO Regulator
$Comp
L Device:C C?
U 1 1 5EDD8F6A
P 1200 1800
AR Path="/5EDC2390/5EDD8F6A" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EDD8F6A" Ref="C90"  Part="1" 
F 0 "C90" H 1315 1846 50  0000 L CNN
F 1 "10uF" H 1315 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1238 1650 50  0001 C CNN
F 3 "~" H 1200 1800 50  0001 C CNN
	1    1200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EDD8F70
P 2250 1800
AR Path="/5EDC2390/5EDD8F70" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EDD8F70" Ref="C91"  Part="1" 
F 0 "C91" H 2365 1846 50  0000 L CNN
F 1 "10uF" H 2365 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2288 1650 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1650 1200 1550
Wire Wire Line
	1200 1550 1450 1550
Wire Wire Line
	2050 1550 2250 1550
Wire Wire Line
	2250 1550 2250 1650
Wire Wire Line
	1750 1850 1750 2000
Wire Wire Line
	1200 1950 1200 2000
Wire Wire Line
	1200 2000 1750 2000
Connection ~ 1750 2000
Wire Wire Line
	1750 2000 1750 2100
Wire Wire Line
	1750 2000 2250 2000
Wire Wire Line
	2250 2000 2250 1950
$Comp
L power:GND #PWR?
U 1 1 5EDD8F81
P 1750 2100
AR Path="/5EDC2390/5EDD8F81" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5EDD8F81" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1750 1850 50  0001 C CNN
F 1 "GND" H 1750 1950 50  0000 C CNN
F 2 "" H 1750 2100 50  0000 C CNN
F 3 "" H 1750 2100 50  0000 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1550 1000 1550
Wire Wire Line
	1000 1550 1000 1400
Connection ~ 1200 1550
Wire Notes Line
	2800 500  2800 2500
Wire Notes Line
	500  2500 500  500 
Wire Wire Line
	4400 2600 4400 2700
Wire Wire Line
	4600 2700 4600 2600
Wire Wire Line
	4400 2700 4400 2800
$Comp
L power:GND #PWR?
U 1 1 5EDE17F5
P 4400 2800
AR Path="/5EDC2390/5EDE17F5" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5EDE17F5" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 4400 2550 50  0001 C CNN
F 1 "GND" H 4400 2650 50  0000 C CNN
F 2 "" H 4400 2800 50  0000 C CNN
F 3 "" H 4400 2800 50  0000 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1400 4400 1300
Wire Wire Line
	4400 1300 4600 1300
Wire Wire Line
	4600 1300 4600 1400
Wire Wire Line
	4400 1300 4400 1200
Connection ~ 4400 1300
Connection ~ 4400 2700
Wire Wire Line
	4400 2700 4600 2700
Wire Wire Line
	4400 1300 3600 1300
Wire Wire Line
	3600 1300 3600 1750
$Comp
L Device:C C?
U 1 1 5EDE180A
P 3600 1900
AR Path="/5EDC2390/5EDE180A" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EDE180A" Ref="C94"  Part="1" 
F 0 "C94" H 3715 1946 50  0000 L CNN
F 1 "0.1uF" H 3715 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3638 1750 50  0001 C CNN
F 3 "~" H 3600 1900 50  0001 C CNN
	1    3600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EDE1810
P 3150 1900
AR Path="/5EDC2390/5EDE1810" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EDE1810" Ref="C93"  Part="1" 
F 0 "C93" H 3265 1946 50  0000 L CNN
F 1 "0.1uF" H 3265 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 1750 50  0001 C CNN
F 3 "~" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1300 3150 1300
Wire Wire Line
	3150 1300 3150 1750
Connection ~ 3600 1300
Wire Wire Line
	3150 2050 3150 2700
Wire Wire Line
	3150 2700 3600 2700
Wire Wire Line
	3600 2050 3600 2700
Connection ~ 3600 2700
Wire Wire Line
	3600 2700 4400 2700
Text Notes 5550 1900 0    50   ~ 0
SDO: I2C Address Bit\nGND: 0 (0x76)\nVCC: 1 (0x77)\n
Wire Wire Line
	5450 1700 5450 1650
Wire Wire Line
	5100 1900 5350 1900
Wire Wire Line
	5100 2100 5350 2100
Text Label 5350 1900 2    50   ~ 0
SCL
Text Label 5350 2100 2    50   ~ 0
SDA
Wire Wire Line
	5100 1700 5450 1700
Wire Wire Line
	5450 1700 5450 2300
Wire Wire Line
	5450 2300 5100 2300
Connection ~ 5450 1700
Text Notes 5400 2600 2    50   ~ 10
I2C Address: 0x77
Text Notes 2900 900  0    118  ~ 24
Gas, Pressure, Temp, Humidity Sense
$Comp
L Sensor:BME280 U?
U 1 1 5EDE1830
P 4500 2000
AR Path="/5EDC2390/5EDE1830" Ref="U?"  Part="1" 
AR Path="/5E100A35/5EDE1830" Ref="U10"  Part="1" 
F 0 "U10" H 4070 2046 50  0000 R CNN
F 1 "BME280" H 4070 1955 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 4500 1800 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-11.pdf" H 4500 1800 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
$Comp
L kala:+VIN_5V #PWR?
U 1 1 5EDF083E
P 1000 1400
AR Path="/5E100DF6/5EDF083E" Ref="#PWR?"  Part="1" 
AR Path="/5E535362/5EDF083E" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5EDF083E" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1000 1250 50  0001 C CNN
F 1 "+VIN_5V" H 1015 1573 50  0000 C CNN
F 2 "" H 1000 1400 50  0001 C CNN
F 3 "" H 1000 1400 50  0001 C CNN
	1    1000 1400
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  2500 2800 2500
Wire Notes Line
	2800 500  500  500 
Wire Notes Line
	2850 500  2850 3000
Wire Notes Line
	6450 3000 6450 500 
Wire Notes Line
	6450 500  2850 500 
$Comp
L kala:+VSENSOR_3V3 #PWR09
U 1 1 5EEE78A5
P 4400 1200
F 0 "#PWR09" H 4400 1050 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 4415 1373 50  0000 C CNN
F 2 "" H 4400 1200 50  0001 C CNN
F 3 "" H 4400 1200 50  0001 C CNN
	1    4400 1200
	1    0    0    -1  
$EndComp
$Comp
L kala:+VSENSOR_3V3 #PWR013
U 1 1 5EEE8E54
P 5450 1650
F 0 "#PWR013" H 5450 1500 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 5465 1823 50  0000 C CNN
F 2 "" H 5450 1650 50  0001 C CNN
F 3 "" H 5450 1650 50  0001 C CNN
	1    5450 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF04716
P 1050 7400
AR Path="/5EDC2390/5EF04716" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5EF04716" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1050 7150 50  0001 C CNN
F 1 "GND" H 1050 7250 50  0000 C CNN
F 2 "" H 1050 7400 50  0000 C CNN
F 3 "" H 1050 7400 50  0000 C CNN
	1    1050 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5300 1550 5300
Wire Wire Line
	1550 5550 1250 5550
Text Notes 2350 7650 2    50   ~ 10
I2C Address: 0x1C
$Comp
L Device:C C?
U 1 1 5EF0471F
P 1050 5550
AR Path="/5EDC2390/5EF0471F" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EF0471F" Ref="C89"  Part="1" 
F 0 "C89" H 936 5596 50  0000 R CNN
F 1 "0.1uF" H 936 5505 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1088 5400 50  0001 C CNN
F 3 "~" H 1050 5550 50  0001 C CNN
	1    1050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5400 1050 5300
Connection ~ 1050 5300
$Comp
L Device:R R?
U 1 1 5EF04727
P 1200 5000
AR Path="/5EDC2390/5EF04727" Ref="R?"  Part="1" 
AR Path="/5E100A35/5EF04727" Ref="R27"  Part="1" 
F 0 "R27" V 1280 5000 50  0000 C CNN
F 1 "10K" V 1200 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 5000 50  0001 C CNN
F 3 "" H 1200 5000 50  0001 C CNN
	1    1200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4800 1050 4700
Wire Wire Line
	1050 4800 1050 5300
Connection ~ 1050 4800
Wire Wire Line
	1200 4850 1200 4800
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 5EF04731
P 3500 6200
AR Path="/5EDC2390/5EF04731" Ref="J?"  Part="1" 
AR Path="/5E100A35/5EF04731" Ref="J9"  Part="1" 
F 0 "J9" H 3579 6192 50  0000 L CNN
F 1 "CAP_TOUCH" H 3579 6101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 3500 6200 50  0001 C CNN
F 3 "~" H 3500 6200 50  0001 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5700 3300 5700
Wire Wire Line
	3300 5800 2950 5800
Wire Wire Line
	2950 5900 3300 5900
Wire Wire Line
	3300 6000 2950 6000
Wire Wire Line
	2950 6100 3300 6100
Wire Wire Line
	3300 6200 2950 6200
Wire Wire Line
	2950 6300 3300 6300
Wire Wire Line
	3300 6400 2950 6400
Wire Wire Line
	2950 6500 3300 6500
Wire Wire Line
	3300 6600 2950 6600
Wire Wire Line
	2950 6700 3300 6700
Wire Wire Line
	3300 6800 2950 6800
Text Notes 1700 4600 0    118  ~ 24
Cap Touch
$Comp
L AT42QT2120-MMH:AT42QT2120-MMH U?
U 1 1 5EF04749
P 2250 6200
AR Path="/5EDC2390/5EF04749" Ref="U?"  Part="1" 
AR Path="/5E100A35/5EF04749" Ref="U9"  Part="1" 
F 0 "U9" H 2250 7470 50  0000 C CNN
F 1 "AT42QT2120-MMH" H 2250 7379 50  0000 C CNN
F 2 "QFN45P300X300X85-21N" H 2250 6200 50  0001 L BNN
F 3 "Touch Sensor Capacitive 12 Key 1.8V to 5.5V Surface Mount 20-Pin VQFN EP" H 2250 6200 50  0001 L BNN
F 4 "Microchip" H 2250 6200 50  0001 L BNN "Field4"
F 5 "Unavailable" H 2250 6200 50  0001 L BNN "Field5"
F 6 "VQFN-20 Microchip" H 2250 6200 50  0001 L BNN "Field6"
F 7 "AT42QT2120-MMH" H 2250 6200 50  0001 L BNN "Field7"
F 8 "None" H 2250 6200 50  0001 L BNN "Field8"
	1    2250 6200
	1    0    0    -1  
$EndComp
Text Label 1250 5450 0    50   ~ 0
SCL
Wire Wire Line
	1550 5450 1250 5450
Text Label 1250 5550 0    50   ~ 0
SDA
Wire Wire Line
	1200 4800 1050 4800
Wire Wire Line
	1550 5700 1200 5700
Wire Wire Line
	1200 5700 1200 5150
Wire Wire Line
	1550 5800 700  5800
Wire Wire Line
	700  5800 700  5200
$Comp
L Device:R R?
U 1 1 5EF04757
P 700 5050
AR Path="/5EDC2390/5EF04757" Ref="R?"  Part="1" 
AR Path="/5E100A35/5EF04757" Ref="R25"  Part="1" 
F 0 "R25" V 780 5050 50  0000 C CNN
F 1 "47K" V 700 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 630 5050 50  0001 C CNN
F 3 "" H 700 5050 50  0001 C CNN
	1    700  5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4900 700  4800
Wire Wire Line
	700  4800 1050 4800
Wire Wire Line
	1550 7200 1400 7200
Wire Wire Line
	1050 7200 1050 7400
Connection ~ 1050 7200
Wire Wire Line
	1400 5900 1550 5900
Wire Wire Line
	1050 6700 1050 7200
Wire Wire Line
	1050 5700 1050 6700
Connection ~ 1050 6700
Wire Wire Line
	1400 6700 1050 6700
Wire Wire Line
	1400 5900 1400 6700
Wire Wire Line
	1550 7300 1400 7300
Wire Wire Line
	1400 7300 1400 7200
Connection ~ 1400 7200
Wire Wire Line
	1400 7200 1050 7200
$Comp
L kala:+VSENSOR_3V3 #PWR03
U 1 1 5EF09772
P 1050 4700
F 0 "#PWR03" H 1050 4550 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 1065 4873 50  0000 C CNN
F 2 "" H 1050 4700 50  0001 C CNN
F 3 "" H 1050 4700 50  0001 C CNN
	1    1050 4700
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  4350 500  7750
Wire Notes Line
	500  7750 4150 7750
Wire Notes Line
	4150 7750 4150 4350
Wire Notes Line
	4150 4350 500  4350
Text Label 3050 5700 0    50   ~ 0
KEY0
Text Label 3050 5800 0    50   ~ 0
KEY1
Text Label 3050 5900 0    50   ~ 0
KEY2
Text Label 3050 6000 0    50   ~ 0
KEY3
Text Label 3050 6100 0    50   ~ 0
KEY4
Text Label 3050 6400 0    50   ~ 0
KEY7
Text Label 3050 6300 0    50   ~ 0
KEY6
Text Label 3050 6200 0    50   ~ 0
KEY5
Text Label 3050 6500 0    50   ~ 0
KEY8
Text Label 3050 6600 0    50   ~ 0
KEY9
Text Label 3050 6700 0    50   ~ 0
KEY10
Text Label 3050 6800 0    50   ~ 0
KEY11
$Comp
L Kala_PCB-rescue:TSL2591-tsl2591-Hat_PCB-rescue U?
U 1 1 5EF16EF7
P 1600 3250
AR Path="/5EDC2390/5EF16EF7" Ref="U?"  Part="1" 
AR Path="/5E100A35/5EF16EF7" Ref="U7"  Part="1" 
F 0 "U7" H 1725 3375 50  0000 C CNN
F 1 "TSL2591" H 1725 3284 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6_1.3x1.2mm_P0.4mm" H 1600 3300 50  0001 C CNN
F 3 "" H 1600 3300 50  0001 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3050
Wire Wire Line
	1400 3650 1100 3650
Wire Wire Line
	1100 3650 1100 3950
$Comp
L Device:C C?
U 1 1 5EF16F07
P 2400 3700
AR Path="/5EDC2390/5EF16F07" Ref="C?"  Part="1" 
AR Path="/5E100A35/5EF16F07" Ref="C92"  Part="1" 
F 0 "C92" H 2515 3746 50  0000 L CNN
F 1 "0.1uF" H 2515 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 3550 50  0001 C CNN
F 3 "~" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3550 2400 3500
Connection ~ 2400 3500
Wire Wire Line
	2400 3850 2400 3950
Wire Wire Line
	2400 3950 1100 3950
Connection ~ 1100 3950
Wire Wire Line
	1100 3950 1100 4050
$Comp
L power:GND #PWR?
U 1 1 5EF16F13
P 1100 4050
AR Path="/5EDC2390/5EF16F13" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5EF16F13" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1100 3800 50  0001 C CNN
F 1 "GND" H 1100 3900 50  0000 C CNN
F 2 "" H 1100 4050 50  0000 C CNN
F 3 "" H 1100 4050 50  0000 C CNN
	1    1100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3350 1100 3350
Wire Wire Line
	2050 3350 2300 3350
Text Label 1100 3350 0    50   ~ 0
SCL
Text Label 2300 3350 2    50   ~ 0
SDA
Wire Wire Line
	1400 3500 900  3500
Wire Wire Line
	900  3500 900  3400
$Comp
L Device:R R?
U 1 1 5EF16F1F
P 900 3250
AR Path="/5EDC2390/5EF16F1F" Ref="R?"  Part="1" 
AR Path="/5E100A35/5EF16F1F" Ref="R26"  Part="1" 
F 0 "R26" V 980 3250 50  0000 C CNN
F 1 "10K" V 900 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 830 3250 50  0001 C CNN
F 3 "" H 900 3250 50  0001 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3100 900  3050
Text Label 1100 3500 0    50   ~ 0
ALS_INT
Text Notes 650  2750 0    118  ~ 24
Ambient Light Sensor
Text Notes 2150 4100 2    50   ~ 10
I2C Address: 0x29
Wire Notes Line
	500  2550 500  4300
Wire Notes Line
	2800 4300 2800 2550
Wire Notes Line
	2800 2550 500  2550
$Comp
L kala:+VSENSOR_3V3 #PWR01
U 1 1 5EF1F6DF
P 900 3050
F 0 "#PWR01" H 900 2900 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 915 3223 50  0000 C CNN
F 2 "" H 900 3050 50  0001 C CNN
F 3 "" H 900 3050 50  0001 C CNN
	1    900  3050
	1    0    0    -1  
$EndComp
$Comp
L kala:+VSENSOR_3V3 #PWR07
U 1 1 5EF2AB60
P 2400 3050
F 0 "#PWR07" H 2400 2900 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 2415 3223 50  0000 C CNN
F 2 "" H 2400 3050 50  0001 C CNN
F 3 "" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EF309A4
P 3350 4000
AR Path="/5EDC2390/5EF309A4" Ref="R?"  Part="1" 
AR Path="/5E100A35/5EF309A4" Ref="R29"  Part="1" 
F 0 "R29" V 3430 4000 50  0000 C CNN
F 1 "3.9K" V 3350 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 4000 50  0001 C CNN
F 3 "" H 3350 4000 50  0001 C CNN
	1    3350 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF309AA
P 3350 3800
AR Path="/5EDC2390/5EF309AA" Ref="R?"  Part="1" 
AR Path="/5E100A35/5EF309AA" Ref="R28"  Part="1" 
F 0 "R28" V 3430 3800 50  0000 C CNN
F 1 "3.9K" V 3350 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 3800 50  0001 C CNN
F 3 "" H 3350 3800 50  0001 C CNN
	1    3350 3800
	0    -1   -1   0   
$EndComp
Text Label 3800 3800 2    50   ~ 0
SDA
Text Label 3800 4000 2    50   ~ 0
SCL
Text Notes 2950 3300 0    118  ~ 24
I2C Pull Ups
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EF309B3
P 4050 3850
AR Path="/5EDC2390/5EF309B3" Ref="J?"  Part="1" 
AR Path="/5E100A35/5EF309B3" Ref="J10"  Part="1" 
F 0 "J10" H 4130 3842 50  0000 L CNN
F 1 "I2C" H 4130 3751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4050 3850 50  0001 C CNN
F 3 "~" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3850 3850 3800
Wire Wire Line
	3500 3800 3550 3800
Wire Wire Line
	3850 3950 3850 4000
Wire Wire Line
	3500 4000 3550 4000
Text HLabel 3650 4100 2    50   Input ~ 0
SENSOR_SCL
Text HLabel 3650 3650 2    50   Input ~ 0
SENSOR_SDA
Wire Wire Line
	3550 3800 3550 3650
Wire Wire Line
	3550 3650 3650 3650
Connection ~ 3550 3800
Wire Wire Line
	3550 3800 3850 3800
Wire Wire Line
	3550 4000 3550 4100
Wire Wire Line
	3550 4100 3650 4100
Connection ~ 3550 4000
Wire Wire Line
	3550 4000 3850 4000
Wire Notes Line
	2850 3050 2850 4300
Text Notes 6550 900  0    118  ~ 24
MEMS Analog Microphone
$Comp
L kala:+VSENSOR_3V3 #PWR08
U 1 1 5E80F77A
P 3150 3550
F 0 "#PWR08" H 3150 3400 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 3165 3723 50  0000 C CNN
F 2 "" H 3150 3550 50  0001 C CNN
F 3 "" H 3150 3550 50  0001 C CNN
	1    3150 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	4350 4300 4350 3050
Wire Wire Line
	3200 4000 3150 4000
Wire Wire Line
	3150 4000 3150 3800
Wire Wire Line
	3200 3800 3150 3800
Connection ~ 3150 3800
Wire Wire Line
	3150 3800 3150 3550
Wire Notes Line
	2850 4300 4350 4300
Wire Notes Line
	4350 3050 2850 3050
Wire Notes Line
	500  4300 2800 4300
Wire Notes Line
	2850 3000 6450 3000
Text Notes 4500 3300 0    118  ~ 24
3V3 Select
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5E8389A8
P 5200 3800
AR Path="/5EDC2390/5E8389A8" Ref="J?"  Part="1" 
AR Path="/5E100A35/5E8389A8" Ref="J11"  Part="1" 
F 0 "J11" H 5280 3792 50  0000 L CNN
F 1 "3V3_SEL" H 5280 3701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 3800 50  0001 C CNN
F 3 "~" H 5200 3800 50  0001 C CNN
	1    5200 3800
	0    1    1    0   
$EndComp
Wire Notes Line
	4400 3050 4400 4300
Wire Notes Line
	5900 4300 5900 3050
Wire Notes Line
	4400 4300 5900 4300
Wire Notes Line
	5900 3050 4400 3050
Connection ~ 2250 1550
$Comp
L kala:+VCC_3V3 #PWR011
U 1 1 5E86557C
P 4700 3550
F 0 "#PWR011" H 4700 3400 50  0001 C CNN
F 1 "+VCC_3V3" H 4715 3723 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3600 4700 3550
$Comp
L kala:+VSENSOR_3V3 #PWR012
U 1 1 5E874223
P 5200 3550
F 0 "#PWR012" H 5200 3400 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 5215 3723 50  0000 C CNN
F 2 "" H 5200 3550 50  0001 C CNN
F 3 "" H 5200 3550 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1550 2550 1550
Text Label 2550 1550 2    50   ~ 0
LDO_3V3
Wire Wire Line
	5200 3600 5200 3550
Wire Wire Line
	4700 3600 5100 3600
Wire Wire Line
	5300 3600 5600 3600
Text Label 5600 3600 2    50   ~ 0
LDO_3V3
$Comp
L kala:SPM0687LR5H MK1
U 1 1 5E8B1382
P 7600 1350
F 0 "MK1" H 7870 1515 50  0000 C CNN
F 1 "SPM0687LR5H" H 7870 1424 50  0000 C CNN
F 2 "Kala_PCB_v1:SPM0687LR5H" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0001 C CNN
	1    7600 1350
	1    0    0    -1  
$EndComp
$Comp
L kala:+VSENSOR_3V3 #PWR014
U 1 1 5E8B2A4B
P 7150 1200
F 0 "#PWR014" H 7150 1050 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 7165 1373 50  0000 C CNN
F 2 "" H 7150 1200 50  0001 C CNN
F 3 "" H 7150 1200 50  0001 C CNN
	1    7150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8B5ECC
P 7150 1850
AR Path="/5EDC2390/5E8B5ECC" Ref="#PWR?"  Part="1" 
AR Path="/5E100A35/5E8B5ECC" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7150 1600 50  0001 C CNN
F 1 "GND" H 7150 1700 50  0000 C CNN
F 2 "" H 7150 1850 50  0000 C CNN
F 3 "" H 7150 1850 50  0000 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1650 7150 1650
Wire Wire Line
	7150 1650 7150 1750
Wire Wire Line
	7500 1450 7150 1450
Wire Wire Line
	7150 1450 7150 1300
$Comp
L Device:C C?
U 1 1 5E8C14DC
P 6850 1550
AR Path="/5EDC2390/5E8C14DC" Ref="C?"  Part="1" 
AR Path="/5E100A35/5E8C14DC" Ref="C95"  Part="1" 
F 0 "C95" H 6965 1596 50  0000 L CNN
F 1 "100pF" H 6965 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6888 1400 50  0001 C CNN
F 3 "~" H 6850 1550 50  0001 C CNN
	1    6850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1300 6850 1300
Wire Wire Line
	6850 1300 6850 1400
Connection ~ 7150 1300
Wire Wire Line
	7150 1300 7150 1200
Wire Wire Line
	6850 1700 6850 1750
Wire Wire Line
	6850 1750 7150 1750
Connection ~ 7150 1750
Wire Wire Line
	7150 1750 7150 1850
$Comp
L Device:C C?
U 1 1 5E8D73EB
P 9000 1350
AR Path="/5EDC2390/5E8D73EB" Ref="C?"  Part="1" 
AR Path="/5E100A35/5E8D73EB" Ref="C97"  Part="1" 
F 0 "C97" H 9115 1396 50  0000 L CNN
F 1 "100nF" H 9115 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9038 1200 50  0001 C CNN
F 3 "~" H 9000 1350 50  0001 C CNN
	1    9000 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8DADC0
P 9000 1800
AR Path="/5EDC2390/5E8DADC0" Ref="C?"  Part="1" 
AR Path="/5E100A35/5E8DADC0" Ref="C98"  Part="1" 
F 0 "C98" H 9115 1846 50  0000 L CNN
F 1 "100nF" H 9115 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9038 1650 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E8EE7B5
P 8500 1550
AR Path="/5EDC2390/5E8EE7B5" Ref="C?"  Part="1" 
AR Path="/5E100A35/5E8EE7B5" Ref="C96"  Part="1" 
F 0 "C96" H 8615 1596 50  0000 L CNN
F 1 "100pF" H 8615 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8538 1400 50  0001 C CNN
F 3 "~" H 8500 1550 50  0001 C CNN
	1    8500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1450 8250 1350
Wire Wire Line
	8250 1350 8500 1350
Wire Wire Line
	8500 1400 8500 1350
Connection ~ 8500 1350
Wire Wire Line
	8500 1350 8850 1350
Wire Wire Line
	8250 1650 8250 1800
Wire Wire Line
	8250 1800 8500 1800
Wire Wire Line
	8500 1700 8500 1800
Connection ~ 8500 1800
Wire Wire Line
	8500 1800 8850 1800
Wire Wire Line
	9150 1350 9250 1350
Wire Wire Line
	9150 1800 9250 1800
Text HLabel 9250 1350 2    50   Input ~ 0
MIC_P
Text HLabel 9250 1800 2    50   Input ~ 0
MIC_N
Wire Notes Line
	6500 500  6500 2100
Wire Notes Line
	6500 2100 9600 2100
Wire Notes Line
	9600 2100 9600 500 
Wire Notes Line
	9600 500  6500 500 
$EndSCHEMATC

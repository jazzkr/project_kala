EESchema Schematic File Version 4
LIBS:Hat_PCB-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Raspberry Pi HAT"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Hat_PCB-rescue:Mounting_Hole-Mechanical H1
U 1 1 5834BC4A
P 1500 9950
F 0 "H1" H 1350 10050 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1500 9800 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1400 9950 60  0001 C CNN
F 3 "" H 1400 9950 60  0001 C CNN
	1    1500 9950
	1    0    0    -1  
$EndComp
$Comp
L Hat_PCB-rescue:Mounting_Hole-Mechanical H2
U 1 1 5834BCDF
P 2500 9950
F 0 "H2" H 2350 10050 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2500 9800 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2400 9950 60  0001 C CNN
F 3 "" H 2400 9950 60  0001 C CNN
	1    2500 9950
	1    0    0    -1  
$EndComp
$Comp
L Hat_PCB-rescue:Mounting_Hole-Mechanical H3
U 1 1 5834BD62
P 1500 10500
F 0 "H3" H 1350 10600 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1500 10350 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1400 10500 60  0001 C CNN
F 3 "" H 1400 10500 60  0001 C CNN
	1    1500 10500
	1    0    0    -1  
$EndComp
$Comp
L Hat_PCB-rescue:Mounting_Hole-Mechanical H4
U 1 1 5834BDED
P 2550 10500
F 0 "H4" H 2400 10600 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2550 10350 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2450 10500 60  0001 C CNN
F 3 "" H 2450 10500 60  0001 C CNN
	1    2550 10500
	1    0    0    -1  
$EndComp
$Comp
L Hat_PCB-rescue:OX40HAT-raspberrypi_hat J3
U 1 1 58DFC771
P 2600 2250
F 0 "J3" H 2950 2350 50  0000 C CNN
F 1 "40HAT" H 2300 2350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2600 2450 50  0001 C CNN
F 3 "" H 1900 2250 50  0000 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Text Label 3100 8150 2    60   ~ 0
P3V3
Text Label 7150 2400 2    60   ~ 0
P5V_HAT
Wire Wire Line
	6400 2400 6550 2400
Text Label 5300 2400 0    60   ~ 0
P5V
Wire Wire Line
	5300 2400 5750 2400
Text Notes 5150 1750 0    118  ~ 24
5V Powered HAT Protection
Text Notes 4900 2050 0    60   ~ 0
This is the recommended 5V rail protection for \na HAT with power going to the Pi.\nSee https://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
$Comp
L Hat_PCB-rescue:DMG2305UX-raspberrypi_hat Q1
U 1 1 58E14EB1
P 6150 2400
F 0 "Q1" V 6300 2550 50  0000 R CNN
F 1 "DMG2305UX" V 6300 2350 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 2500 50  0001 C CNN
F 3 "" H 6150 2400 50  0000 C CNN
	1    6150 2400
	0    -1   -1   0   
$EndComp
$Comp
L Hat_PCB-rescue:DMMT5401-raspberrypi_hat Q2
U 1 1 58E1538B
P 5850 3000
F 0 "Q2" H 6050 3075 50  0000 L CNN
F 1 "DMMT5401" H 6050 3000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6050 2925 50  0000 L CIN
F 3 "" H 5850 3000 50  0000 L CNN
	1    5850 3000
	-1   0    0    1   
$EndComp
$Comp
L Hat_PCB-rescue:DMMT5401-raspberrypi_hat Q2
U 2 1 58E153D6
P 6450 3000
F 0 "Q2" H 6650 3075 50  0000 L CNN
F 1 "DMMT5401" H 6650 3000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6650 2925 50  0000 L CIN
F 3 "" H 6450 3000 50  0000 L CNN
	2    6450 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 58E15896
P 5750 3600
F 0 "R23" V 5830 3600 50  0000 C CNN
F 1 "10K" V 5750 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 5680 3600 50  0001 C CNN
F 3 "" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 58E158A1
P 6550 3600
F 0 "R24" V 6630 3600 50  0000 C CNN
F 1 "47K" V 6550 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 6480 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58E15A41
P 5750 3800
F 0 "#PWR01" H 5750 3550 50  0001 C CNN
F 1 "GND" H 5750 3650 50  0000 C CNN
F 2 "" H 5750 3800 50  0000 C CNN
F 3 "" H 5750 3800 50  0000 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 58E15A9E
P 6550 3800
F 0 "#PWR02" H 6550 3550 50  0001 C CNN
F 1 "GND" H 6550 3650 50  0000 C CNN
F 2 "" H 6550 3800 50  0000 C CNN
F 3 "" H 6550 3800 50  0000 C CNN
	1    6550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3800 5750 3750
Wire Wire Line
	6550 3800 6550 3750
Wire Wire Line
	6550 3200 6550 3300
Wire Wire Line
	6150 2650 6150 3300
Wire Wire Line
	6150 3300 6550 3300
Connection ~ 6550 3300
Wire Wire Line
	5750 3200 5750 3350
Wire Wire Line
	6050 3000 6050 3350
Wire Wire Line
	5750 3350 6050 3350
Connection ~ 5750 3350
Wire Wire Line
	6250 3350 6250 3000
Connection ~ 6050 3350
Wire Wire Line
	5750 2800 5750 2400
Connection ~ 5750 2400
Wire Wire Line
	6550 2800 6550 2400
Connection ~ 6550 2400
$Comp
L Hat_PCB-rescue:CAT24C32-raspberrypi_hat U2
U 1 1 58E1713F
P 2100 5850
F 0 "U2" H 2450 6200 50  0000 C CNN
F 1 "CAT24C32" H 1850 6200 50  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2100 5850 50  0001 C CNN
F 3 "" H 2100 5850 50  0000 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 58E17715
P 2300 8150
F 0 "R6" V 2380 8150 50  0000 C CNN
F 1 "3.9K" V 2300 8150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2230 8150 50  0001 C CNN
F 3 "" H 2300 8150 50  0001 C CNN
	1    2300 8150
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 58E17720
P 2300 8400
F 0 "R8" V 2380 8400 50  0000 C CNN
F 1 "3.9K" V 2300 8400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2230 8400 50  0001 C CNN
F 3 "" H 2300 8400 50  0001 C CNN
	1    2300 8400
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 8150 2100 8150
Wire Wire Line
	1200 8400 2100 8400
Wire Wire Line
	2100 8250 1200 8250
Wire Wire Line
	2100 8500 1200 8500
Wire Wire Line
	2100 8500 2100 8400
Connection ~ 2100 8400
Wire Wire Line
	2100 8250 2100 8150
Connection ~ 2100 8150
Wire Wire Line
	2450 8150 2650 8150
Wire Wire Line
	2650 8400 2450 8400
Connection ~ 2650 8150
Text Label 1200 8150 0    60   ~ 0
ID_SD_EEPROM_pu
Text Label 1200 8250 0    60   ~ 0
ID_SD_EEPROM
Text Label 1200 8400 0    60   ~ 0
ID_SC_EEPROM_pu
Text Label 1200 8500 0    60   ~ 0
ID_SC_EEPROM
Wire Wire Line
	3450 6050 2600 6050
Wire Wire Line
	2600 5950 3450 5950
Text Label 3450 5950 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 3450 6050 2    60   ~ 0
ID_SC_EEPROM_pu
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 58E18D32
P 750 6100
F 0 "J9" H 750 6250 50  0000 C CNN
F 1 "CONN_01X02" V 850 6100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 750 6100 50  0001 C CNN
F 3 "" H 750 6100 50  0000 C CNN
	1    750  6100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R29
U 1 1 58E19E51
P 1550 6250
F 0 "R29" V 1630 6250 50  0000 C CNN
F 1 "10K" V 1550 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1480 6250 50  0001 C CNN
F 3 "" H 1550 6250 50  0001 C CNN
	1    1550 6250
	-1   0    0    1   
$EndComp
Text Label 2400 5350 2    60   ~ 0
P3V3
Wire Wire Line
	2100 5350 2400 5350
Wire Wire Line
	2100 5350 2100 5450
$Comp
L power:GND #PWR03
U 1 1 58E1A612
P 1050 5750
F 0 "#PWR03" H 1050 5500 50  0001 C CNN
F 1 "GND" H 1050 5600 50  0000 C CNN
F 2 "" H 1050 5750 50  0000 C CNN
F 3 "" H 1050 5750 50  0000 C CNN
	1    1050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5650 1300 5750
Wire Wire Line
	1050 5650 1300 5650
Wire Wire Line
	1600 5750 1300 5750
Connection ~ 1300 5750
Wire Wire Line
	1300 5850 1600 5850
$Comp
L power:GND #PWR04
U 1 1 58E1AF98
P 1050 6150
F 0 "#PWR04" H 1050 5900 50  0001 C CNN
F 1 "GND" H 1050 6000 50  0000 C CNN
F 2 "" H 1050 6150 50  0000 C CNN
F 3 "" H 1050 6150 50  0000 C CNN
	1    1050 6150
	1    0    0    -1  
$EndComp
Text Notes 3250 5350 0    60   ~ 0
EEPROM WRITE ENABLE
$Comp
L Device:R R11
U 1 1 58E22900
P 1300 6100
F 0 "R11" V 1380 6100 50  0000 C CNN
F 1 "DNP" V 1300 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1230 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0001 C CNN
	1    1300 6100
	0    1    1    0   
$EndComp
Text Notes 1500 7800 0    118  ~ 24
Pullup Resistors
Text Notes 2000 4800 0    118  ~ 24
HAT EEPROM
Text Notes 1150 9650 0    118  ~ 24
Mounting Holes
Text Notes 1650 2000 0    118  ~ 24
40-Pin HAT Connector
Text Label 800  4150 0    60   ~ 0
GND
Wire Wire Line
	2000 4150 800  4150
Text Label 800  3550 0    60   ~ 0
ID_SD_EEPROM
Wire Wire Line
	2000 3550 800  3550
Text Label 800  3450 0    60   ~ 0
GND
Wire Wire Line
	2000 3450 800  3450
Text Label 800  2650 0    60   ~ 0
GND
Wire Wire Line
	2000 2650 800  2650
Text Label 800  2250 0    60   ~ 0
P3V3_HAT
Wire Wire Line
	2000 2250 800  2250
Wire Wire Line
	3200 2850 4400 2850
Wire Wire Line
	3200 3150 4400 3150
Wire Wire Line
	3200 3550 4400 3550
Wire Wire Line
	3200 3650 4400 3650
Wire Wire Line
	3200 3850 4400 3850
Text Label 4400 2850 2    60   ~ 0
GND
Text Label 4400 3150 2    60   ~ 0
GND
Text Label 4400 3650 2    60   ~ 0
GND
Text Label 4400 3550 2    60   ~ 0
ID_SC_EEPROM
Text Label 4400 3850 2    60   ~ 0
GND
Text Label 4400 2450 2    60   ~ 0
GND
Wire Wire Line
	3200 2450 4400 2450
Text Label 4400 2350 2    60   ~ 0
P5V_HAT
Wire Wire Line
	3200 2350 4400 2350
Text Label 4400 2250 2    60   ~ 0
P5V_HAT
Wire Wire Line
	3200 2250 4400 2250
Wire Wire Line
	2650 8400 2650 8150
Text Notes 1200 5200 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
Text Notes 1050 8000 0    60   ~ 0
These are just pullup resistors for the I2C bus on the EEPROM.\nThe resistor values are per the HAT spec.
Text Notes 850  1250 0    100  ~ 0
This is based on the official Raspberry Pi spec to be able to call an extension board a HAT.\nhttps://github.com/raspberrypi/hats/blob/master/designguide.md
$Comp
L power:GND #PWR05
U 1 1 58E3CC10
P 2100 6350
F 0 "#PWR05" H 2100 6100 50  0001 C CNN
F 1 "GND" H 2100 6200 50  0000 C CNN
F 2 "" H 2100 6350 50  0000 C CNN
F 3 "" H 2100 6350 50  0000 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6250 2100 6350
Text Label 1800 6550 2    60   ~ 0
P3V3
Wire Wire Line
	1800 6550 1550 6550
Wire Wire Line
	1550 6550 1550 6400
Wire Wire Line
	1450 6050 1550 6050
Wire Wire Line
	1550 6000 1550 6050
Wire Wire Line
	1050 5650 1050 5750
Connection ~ 1300 5650
Wire Wire Line
	1450 6050 1450 6100
Connection ~ 1550 6050
Wire Wire Line
	950  6100 1050 6100
Wire Wire Line
	1050 6150 1050 6100
Connection ~ 1050 6100
Wire Wire Line
	950  6000 1550 6000
Wire Wire Line
	6550 3300 6550 3450
Wire Wire Line
	5750 3350 5750 3450
Wire Wire Line
	6050 3350 6250 3350
Wire Wire Line
	5750 2400 5900 2400
Wire Wire Line
	6550 2400 7150 2400
Wire Wire Line
	2100 8400 2150 8400
Wire Wire Line
	2100 8150 2150 8150
Wire Wire Line
	2650 8150 3100 8150
Wire Wire Line
	1300 5750 1300 5850
Wire Wire Line
	1300 5650 1600 5650
Wire Wire Line
	1550 6050 1600 6050
Wire Wire Line
	1550 6050 1550 6100
Wire Wire Line
	1050 6100 1150 6100
$Comp
L MCU_Microchip_ATtiny:ATtiny88-MU U?
U 1 1 5C3B6615
P 5400 9200
F 0 "U?" H 4870 9154 50  0000 R CNN
F 1 "ATtiny88-MU" H 4870 9245 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 5400 9200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8008.pdf" H 5400 9200 50  0001 C CNN
	1    5400 9200
	1    0    0    -1  
$EndComp
$Comp
L Sensor:BME680 U?
U 1 1 5C3BDBAD
P 6200 5250
F 0 "U?" H 5770 5296 50  0000 R CNN
F 1 "BME680" H 5770 5205 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_3x3mm_P0.8mm_ClockwisePinNumbering" H 6200 5050 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME680-DS001-00.pdf" H 6200 5050 50  0001 C CNN
	1    6200 5250
	1    0    0    -1  
$EndComp
$Comp
L MPR121QR2:MPR121QR2 U?
U 1 1 5C3BF345
P 11850 3600
F 0 "U?" H 11850 4370 50  0000 C CNN
F 1 "MPR121QR2" H 11850 4279 50  0000 C CNN
F 2 "QFN40P300X300X60-20N" H 11850 3600 50  0001 L BNN
F 3 "Unavailable" H 11850 3600 50  0001 L BNN
F 4 "NXP USA" H 11850 3600 50  0001 L BNN "Field4"
F 5 "Capacitive Touch Screen 12Keys 20-Pin QFN Tape and Reel" H 11850 3600 50  0001 L BNN "Field5"
F 6 "None" H 11850 3600 50  0001 L BNN "Field6"
F 7 "QFN-20 Freescale Semiconductor" H 11850 3600 50  0001 L BNN "Field7"
F 8 "MPR121QR2" H 11850 3600 50  0001 L BNN "Field8"
	1    11850 3600
	1    0    0    -1  
$EndComp
$Comp
L TPA2016D2RTJR:TPA2016D2RTJR U?
U 1 1 5C3BF5FA
P 12000 7100
F 0 "U?" H 12000 8370 50  0000 C CNN
F 1 "TPA2016D2RTJR" H 12000 8279 50  0000 C CNN
F 2 "QFN50P400X400X80-21N" H 12000 7100 50  0001 L BNN
F 3 "Unavailable" H 12000 7100 50  0001 L BNN
F 4 "Texas Instruments" H 12000 7100 50  0001 L BNN "Field4"
F 5 "2.8-W/Ch Stereo Class-D Audio Amplifier with SmartGainTM AGC/DRC _TPA2016_ 20-QFN -40 to 85" H 12000 7100 50  0001 L BNN "Field5"
F 6 "None" H 12000 7100 50  0001 L BNN "Field6"
F 7 "QFN-20 Texas Instruments" H 12000 7100 50  0001 L BNN "Field7"
F 8 "TPA2016D2RTJR" H 12000 7100 50  0001 L BNN "Field8"
	1    12000 7100
	1    0    0    -1  
$EndComp
$Comp
L tsl2591:TSL2591 U?
U 1 1 5C3C1FDB
P 8550 10100
F 0 "U?" H 8675 10225 50  0000 C CNN
F 1 "TSL2591" H 8675 10134 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6_1.3x1.2mm_P0.4mm" H 8550 10150 50  0001 C CNN
F 3 "" H 8550 10150 50  0001 C CNN
	1    8550 10100
	1    0    0    -1  
$EndComp
$EndSCHEMATC

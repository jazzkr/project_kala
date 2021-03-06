EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 8
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
L Kala_PCB-rescue:TPA2016D2RTJR-TPA2016D2RTJR-Hat_PCB-rescue U11
U 1 1 5C3BF5FA
P 3300 2550
F 0 "U11" H 3300 3820 50  0000 C CNN
F 1 "TPA2016D2RTJR" H 3300 3729 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 3300 2550 50  0001 L BNN
F 3 "Unavailable" H 3300 2550 50  0001 L BNN
F 4 "Texas Instruments" H 3300 2550 50  0001 L BNN "Field4"
F 5 "2.8-W/Ch Stereo Class-D Audio Amplifier with SmartGainTM AGC/DRC _TPA2016_ 20-QFN -40 to 85" H 3300 2550 50  0001 L BNN "Field5"
F 6 "None" H 3300 2550 50  0001 L BNN "Field6"
F 7 "QFN-20 Texas Instruments" H 3300 2550 50  0001 L BNN "Field7"
F 8 "TPA2016D2RTJR" H 3300 2550 50  0001 L BNN "Field8"
	1    3300 2550
	1    0    0    -1  
$EndComp
Text Notes 3900 3750 0    50   ~ 10
I2C Addresses: \n0xB0 (Writing)\n0xB1 (Reading)
Wire Wire Line
	2600 3550 2500 3550
Wire Wire Line
	2500 3550 2500 3650
Wire Wire Line
	2500 3650 2600 3650
$Comp
L Device:R R31
U 1 1 5CA51153
P 1950 2850
F 0 "R31" V 2030 2850 50  0000 C CNN
F 1 "0R" V 1950 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2750 2250 2750
Wire Wire Line
	2250 2750 2250 2700
Wire Wire Line
	2250 2700 1950 2700
Wire Wire Line
	2600 2950 2250 2950
Wire Wire Line
	2250 2950 2250 3000
Wire Wire Line
	2250 3000 1950 3000
Wire Wire Line
	1950 3000 1950 3200
Connection ~ 1950 3000
$Comp
L Device:R R32
U 1 1 5CA7E74C
P 1950 3350
F 0 "R32" V 2030 3350 50  0000 C CNN
F 1 "0R" V 1950 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 3350 50  0001 C CNN
F 3 "" H 1950 3350 50  0001 C CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5CA8A4DF
P 1950 3600
F 0 "#PWR027" H 1950 3350 50  0001 C CNN
F 1 "GND" H 1950 3450 50  0000 C CNN
F 2 "" H 1950 3600 50  0000 C CNN
F 3 "" H 1950 3600 50  0000 C CNN
	1    1950 3600
	1    0    0    -1  
$EndComp
Text Label 2250 2650 0    50   ~ 0
AUD_IN_L+
Text Label 2250 2750 0    50   ~ 0
AUD_IN_L-
Text Label 2250 3050 0    50   ~ 0
AUD_IN_R+
Text Label 2250 2950 0    50   ~ 0
AUD_IN_R-
Wire Wire Line
	2600 2250 2250 2250
Wire Wire Line
	2600 2350 2250 2350
$Comp
L Device:R R30
U 1 1 5CAC6F0F
P 1950 1800
F 0 "R30" V 2030 1800 50  0000 C CNN
F 1 "0R" V 1950 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 1800 50  0001 C CNN
F 3 "" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 1950 2450
Wire Wire Line
	1950 2450 1950 1950
Wire Wire Line
	1950 1650 1950 1600
Wire Wire Line
	2600 2050 2250 2050
Wire Wire Line
	2250 2050 2250 1950
Wire Wire Line
	2250 1600 1950 1600
Connection ~ 1950 1600
Wire Wire Line
	1950 1600 1950 1200
Wire Wire Line
	2600 1950 2250 1950
Connection ~ 2250 1950
Wire Wire Line
	2250 1950 2250 1850
Wire Wire Line
	2600 1850 2250 1850
Connection ~ 2250 1850
Wire Wire Line
	2250 1850 2250 1750
Wire Wire Line
	2600 1750 2250 1750
Connection ~ 2250 1750
Wire Wire Line
	2250 1750 2250 1650
Wire Wire Line
	2600 1650 2250 1650
Connection ~ 2250 1650
Wire Wire Line
	2250 1650 2250 1600
$Comp
L power:+3.3V #PWR029
U 1 1 5CB2E813
P 4000 2600
F 0 "#PWR029" H 4000 2450 50  0001 C CNN
F 1 "+3.3V" H 4015 2773 50  0000 C CNN
F 2 "" H 4000 2600 50  0001 C CNN
F 3 "" H 4000 2600 50  0001 C CNN
	1    4000 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C101
U 1 1 5CB2E819
P 4900 2850
F 0 "C101" H 5015 2896 50  0000 L CNN
F 1 "10uF" H 5015 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4938 2700 50  0001 C CNN
F 3 "~" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C100
U 1 1 5CB2E820
P 4450 2850
F 0 "C100" H 4565 2896 50  0000 L CNN
F 1 "10uF" H 4565 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4488 2700 50  0001 C CNN
F 3 "~" H 4450 2850 50  0001 C CNN
	1    4450 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C99
U 1 1 5CB2E827
P 4000 2850
F 0 "C99" H 4115 2896 50  0000 L CNN
F 1 "0.1uF" H 4115 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 2700 50  0001 C CNN
F 3 "~" H 4000 2850 50  0001 C CNN
	1    4000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2700 4000 2600
Connection ~ 4000 2700
Wire Wire Line
	4000 2700 4450 2700
Connection ~ 4450 2700
Wire Wire Line
	4450 2700 4900 2700
Wire Wire Line
	4000 3000 4450 3000
Connection ~ 4450 3000
Wire Wire Line
	4450 3000 4900 3000
Wire Wire Line
	4900 3000 4900 3050
Connection ~ 4900 3000
$Comp
L power:GND #PWR030
U 1 1 5CB2E838
P 4900 3050
F 0 "#PWR030" H 4900 2800 50  0001 C CNN
F 1 "GND" H 4900 2900 50  0000 C CNN
F 2 "" H 4900 3050 50  0000 C CNN
F 3 "" H 4900 3050 50  0000 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 5CB3D9A3
P 1950 1200
F 0 "#PWR026" H 1950 1050 50  0001 C CNN
F 1 "+3.3V" H 1965 1373 50  0000 C CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
Text Label 2250 2450 0    50   ~ 0
AUD_SDN
Text Label 2250 2250 0    50   ~ 0
SCL
Text Label 2250 2350 0    50   ~ 0
SDA
Wire Wire Line
	2600 3750 2500 3750
Wire Wire Line
	2500 3750 2500 3650
Connection ~ 2500 3650
Wire Wire Line
	2500 3750 2500 4100
Connection ~ 2500 3750
Wire Wire Line
	1950 3600 1950 3500
$Comp
L power:GND #PWR028
U 1 1 5CB881F6
P 2500 4100
F 0 "#PWR028" H 2500 3850 50  0001 C CNN
F 1 "GND" H 2500 3950 50  0000 C CNN
F 2 "" H 2500 4100 50  0000 C CNN
F 3 "" H 2500 4100 50  0000 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 5CB97A16
P 4850 1650
F 0 "J20" H 4930 1642 50  0000 L CNN
F 1 "OUT_SPK_L" H 4930 1551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 1650 50  0001 C CNN
F 3 "~" H 4850 1650 50  0001 C CNN
	1    4850 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J21
U 1 1 5CB97AC0
P 4850 1950
F 0 "J21" H 4930 1942 50  0000 L CNN
F 1 "OUT_SPK_R" H 4930 1851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 1950 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
Text Notes 2400 1050 0    118  ~ 24
Audio Amplifier
$Comp
L Connector_Generic:Conn_01x04 J18
U 1 1 5CFA8690
P 1250 2850
F 0 "J18" H 1170 2425 50  0000 C CNN
F 1 "AUD_IN" H 1170 2516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1250 2850 50  0001 C CNN
F 3 "~" H 1250 2850 50  0001 C CNN
	1    1250 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 2700 1750 2700
Wire Wire Line
	1750 2700 1750 2750
Wire Wire Line
	1750 2750 1450 2750
Connection ~ 1950 2700
Wire Wire Line
	1950 3000 1750 3000
Wire Wire Line
	1750 3000 1750 2850
Wire Wire Line
	1750 2850 1450 2850
Wire Wire Line
	1450 2650 2600 2650
Wire Wire Line
	1700 3050 1700 2950
Wire Wire Line
	1700 2950 1450 2950
Wire Wire Line
	1700 3050 2600 3050
$Comp
L Connector:AudioJack3 J19
U 1 1 5C901609
P 4350 1000
F 0 "J19" H 4330 1325 50  0000 C CNN
F 1 "AudioJack3_Ground" H 4330 1234 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 4350 1000 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5C93473E
P 5050 1100
F 0 "#PWR031" H 5050 850 50  0001 C CNN
F 1 "GND" H 5050 950 50  0000 C CNN
F 2 "" H 5050 1100 50  0000 C CNN
F 3 "" H 5050 1100 50  0000 C CNN
	1    5050 1100
	1    0    0    -1  
$EndComp
Text Label 4950 1000 2    50   ~ 0
AUD_O_R+
Wire Wire Line
	4550 900  5050 900 
Wire Wire Line
	4550 1000 4950 1000
Wire Wire Line
	4550 1100 4950 1100
Text Label 4950 1100 2    50   ~ 0
AUD_O_L+
$Comp
L Connector:AudioJack3 J17
U 1 1 5CA00716
P 1000 3500
F 0 "J17" H 980 3825 50  0000 C CNN
F 1 "AudioJack3" H 980 3734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 1000 3500 50  0001 C CNN
F 3 "~" H 1000 3500 50  0001 C CNN
	1    1000 3500
	1    0    0    -1  
$EndComp
Text Label 4400 1650 2    50   ~ 0
AUD_O_L+
Wire Wire Line
	4000 1650 4650 1650
Wire Wire Line
	4000 1750 4650 1750
Wire Wire Line
	4000 1950 4650 1950
Wire Wire Line
	4000 2050 4650 2050
Text Label 4400 1750 2    50   ~ 0
AUD_O_L-
Text Label 4400 1950 2    50   ~ 0
AUD_O_R+
Text Label 4400 2050 2    50   ~ 0
AUD_O_R-
Wire Wire Line
	1200 3400 1650 3400
Wire Wire Line
	1200 3500 1600 3500
Wire Wire Line
	1200 3600 1600 3600
Text Label 1600 3500 2    50   ~ 0
AUD_IN_R+
Text Label 1600 3600 2    50   ~ 0
AUD_IN_L+
Wire Wire Line
	5050 1100 5050 900 
$Comp
L power:GND #PWR025
U 1 1 5CC223F1
P 1650 3650
F 0 "#PWR025" H 1650 3400 50  0001 C CNN
F 1 "GND" H 1650 3500 50  0000 C CNN
F 2 "" H 1650 3650 50  0000 C CNN
F 3 "" H 1650 3650 50  0000 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3650 1650 3400
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Kala_PCB-rescue:TPA2016D2RTJR-TPA2016D2RTJR-Hat_PCB-rescue U?
U 1 1 5ECD230D
P 3350 2500
AR Path="/5EDC2390/5ECD230D" Ref="U?"  Part="1" 
AR Path="/5ECBD457/5ECD230D" Ref="U11"  Part="1" 
F 0 "U11" H 3350 3770 50  0000 C CNN
F 1 "TPA2016D2RTJR" H 3350 3679 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 3350 2500 50  0001 L BNN
F 3 "Unavailable" H 3350 2500 50  0001 L BNN
F 4 "Texas Instruments" H 3350 2500 50  0001 L BNN "Field4"
F 5 "2.8-W/Ch Stereo Class-D Audio Amplifier with SmartGainTM AGC/DRC _TPA2016_ 20-QFN -40 to 85" H 3350 2500 50  0001 L BNN "Field5"
F 6 "None" H 3350 2500 50  0001 L BNN "Field6"
F 7 "QFN-20 Texas Instruments" H 3350 2500 50  0001 L BNN "Field7"
F 8 "TPA2016D2RTJR" H 3350 2500 50  0001 L BNN "Field8"
	1    3350 2500
	1    0    0    -1  
$EndComp
Text Notes 3950 3700 0    50   ~ 10
I2C Addresses: \n0xB0 (Writing)\n0xB1 (Reading)
Wire Wire Line
	2650 3500 2550 3500
Wire Wire Line
	2550 3500 2550 3600
Wire Wire Line
	2550 3600 2650 3600
$Comp
L Device:R R?
U 1 1 5ECD2317
P 2000 2800
AR Path="/5EDC2390/5ECD2317" Ref="R?"  Part="1" 
AR Path="/5ECBD457/5ECD2317" Ref="R31"  Part="1" 
F 0 "R31" V 2080 2800 50  0000 C CNN
F 1 "0R" V 2000 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 2800 50  0001 C CNN
F 3 "" H 2000 2800 50  0001 C CNN
	1    2000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2700 2300 2700
Wire Wire Line
	2300 2700 2300 2650
Wire Wire Line
	2300 2650 2000 2650
Wire Wire Line
	2650 2900 2300 2900
Wire Wire Line
	2300 2900 2300 2950
Wire Wire Line
	2300 2950 2000 2950
Wire Wire Line
	2000 2950 2000 3150
Connection ~ 2000 2950
$Comp
L Device:R R?
U 1 1 5ECD2325
P 2000 3300
AR Path="/5EDC2390/5ECD2325" Ref="R?"  Part="1" 
AR Path="/5ECBD457/5ECD2325" Ref="R32"  Part="1" 
F 0 "R32" V 2080 3300 50  0000 C CNN
F 1 "0R" V 2000 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 3300 50  0001 C CNN
F 3 "" H 2000 3300 50  0001 C CNN
	1    2000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECD232B
P 2000 3550
AR Path="/5EDC2390/5ECD232B" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD232B" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 2000 3300 50  0001 C CNN
F 1 "GND" H 2000 3400 50  0000 C CNN
F 2 "" H 2000 3550 50  0000 C CNN
F 3 "" H 2000 3550 50  0000 C CNN
	1    2000 3550
	1    0    0    -1  
$EndComp
Text Label 2300 2600 0    50   ~ 0
AUD_IN_L+
Text Label 2300 2700 0    50   ~ 0
AUD_IN_L-
Text Label 2300 3000 0    50   ~ 0
AUD_IN_R+
Text Label 2300 2900 0    50   ~ 0
AUD_IN_R-
Wire Wire Line
	2650 2200 2300 2200
Wire Wire Line
	2650 2300 2300 2300
$Comp
L Device:R R?
U 1 1 5ECD2337
P 2000 1750
AR Path="/5EDC2390/5ECD2337" Ref="R?"  Part="1" 
AR Path="/5ECBD457/5ECD2337" Ref="R30"  Part="1" 
F 0 "R30" V 2080 1750 50  0000 C CNN
F 1 "0R" V 2000 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1930 1750 50  0001 C CNN
F 3 "" H 2000 1750 50  0001 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2400 2000 2400
Wire Wire Line
	2000 2400 2000 1900
Wire Wire Line
	2000 1600 2000 1550
Wire Wire Line
	2650 2000 2300 2000
Wire Wire Line
	2300 2000 2300 1900
Wire Wire Line
	2300 1550 2000 1550
Connection ~ 2000 1550
Wire Wire Line
	2000 1550 2000 1150
Wire Wire Line
	2650 1900 2300 1900
Connection ~ 2300 1900
Wire Wire Line
	2300 1900 2300 1800
Wire Wire Line
	2650 1800 2300 1800
Connection ~ 2300 1800
Wire Wire Line
	2300 1800 2300 1700
Wire Wire Line
	2650 1700 2300 1700
Connection ~ 2300 1700
Wire Wire Line
	2300 1700 2300 1600
Wire Wire Line
	2650 1600 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2300 1600 2300 1550
$Comp
L power:+3.3V #PWR?
U 1 1 5ECD2351
P 4050 2550
AR Path="/5EDC2390/5ECD2351" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD2351" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 4050 2400 50  0001 C CNN
F 1 "+3.3V" H 4065 2723 50  0000 C CNN
F 2 "" H 4050 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0001 C CNN
	1    4050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ECD2357
P 4950 2800
AR Path="/5EDC2390/5ECD2357" Ref="C?"  Part="1" 
AR Path="/5ECBD457/5ECD2357" Ref="C101"  Part="1" 
F 0 "C101" H 5065 2846 50  0000 L CNN
F 1 "10uF" H 5065 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 2650 50  0001 C CNN
F 3 "~" H 4950 2800 50  0001 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ECD235D
P 4500 2800
AR Path="/5EDC2390/5ECD235D" Ref="C?"  Part="1" 
AR Path="/5ECBD457/5ECD235D" Ref="C100"  Part="1" 
F 0 "C100" H 4615 2846 50  0000 L CNN
F 1 "10uF" H 4615 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4538 2650 50  0001 C CNN
F 3 "~" H 4500 2800 50  0001 C CNN
	1    4500 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ECD2363
P 4050 2800
AR Path="/5EDC2390/5ECD2363" Ref="C?"  Part="1" 
AR Path="/5ECBD457/5ECD2363" Ref="C99"  Part="1" 
F 0 "C99" H 4165 2846 50  0000 L CNN
F 1 "0.1uF" H 4165 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 2650 50  0001 C CNN
F 3 "~" H 4050 2800 50  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2650 4050 2550
Connection ~ 4050 2650
Wire Wire Line
	4050 2650 4500 2650
Connection ~ 4500 2650
Wire Wire Line
	4500 2650 4950 2650
Wire Wire Line
	4050 2950 4500 2950
Connection ~ 4500 2950
Wire Wire Line
	4500 2950 4950 2950
Wire Wire Line
	4950 2950 4950 3000
Connection ~ 4950 2950
$Comp
L power:GND #PWR?
U 1 1 5ECD2373
P 4950 3000
AR Path="/5EDC2390/5ECD2373" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD2373" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4950 2750 50  0001 C CNN
F 1 "GND" H 4950 2850 50  0000 C CNN
F 2 "" H 4950 3000 50  0000 C CNN
F 3 "" H 4950 3000 50  0000 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Text Label 2300 2400 0    50   ~ 0
AUD_SDN
Text Label 2300 2200 0    50   ~ 0
AUD_SCL
Text Label 2300 2300 0    50   ~ 0
AUD_SDA
Wire Wire Line
	2650 3700 2550 3700
Wire Wire Line
	2550 3700 2550 3600
Connection ~ 2550 3600
Wire Wire Line
	2550 3700 2550 4050
Connection ~ 2550 3700
Wire Wire Line
	2000 3550 2000 3450
$Comp
L power:GND #PWR?
U 1 1 5ECD2388
P 2550 4050
AR Path="/5EDC2390/5ECD2388" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD2388" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2550 3800 50  0001 C CNN
F 1 "GND" H 2550 3900 50  0000 C CNN
F 2 "" H 2550 4050 50  0000 C CNN
F 3 "" H 2550 4050 50  0000 C CNN
	1    2550 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5ECD238E
P 4900 1600
AR Path="/5EDC2390/5ECD238E" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECD238E" Ref="J19"  Part="1" 
F 0 "J19" H 4980 1592 50  0000 L CNN
F 1 "OUT_SPK_L" H 4980 1501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4900 1600 50  0001 C CNN
F 3 "~" H 4900 1600 50  0001 C CNN
	1    4900 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5ECD2394
P 4900 1900
AR Path="/5EDC2390/5ECD2394" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECD2394" Ref="J20"  Part="1" 
F 0 "J20" H 4980 1892 50  0000 L CNN
F 1 "OUT_SPK_R" H 4980 1801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4900 1900 50  0001 C CNN
F 3 "~" H 4900 1900 50  0001 C CNN
	1    4900 1900
	1    0    0    -1  
$EndComp
Text Notes 2450 1000 0    118  ~ 24
Audio Amplifier
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5ECD239B
P 7650 1450
AR Path="/5EDC2390/5ECD239B" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECD239B" Ref="J21"  Part="1" 
F 0 "J21" H 7730 1442 50  0000 L CNN
F 1 "AUD_IN" H 7730 1351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7650 1450 50  0001 C CNN
F 3 "~" H 7650 1450 50  0001 C CNN
	1    7650 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 5ECD23BD
P 1050 3450
AR Path="/5EDC2390/5ECD23BD" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECD23BD" Ref="J17"  Part="1" 
F 0 "J17" H 1030 3775 50  0000 C CNN
F 1 "AudioJack3" H 1030 3684 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 1050 3450 50  0001 C CNN
F 3 "~" H 1050 3450 50  0001 C CNN
	1    1050 3450
	1    0    0    -1  
$EndComp
Text Label 4450 1600 2    50   ~ 0
AUD_O_L+
Wire Wire Line
	4050 1600 4700 1600
Wire Wire Line
	4050 1700 4700 1700
Wire Wire Line
	4050 1900 4700 1900
Wire Wire Line
	4050 2000 4700 2000
Text Label 4450 1700 2    50   ~ 0
AUD_O_L-
Text Label 4450 1900 2    50   ~ 0
AUD_O_R+
Text Label 4450 2000 2    50   ~ 0
AUD_O_R-
Wire Wire Line
	1250 3350 1700 3350
Wire Wire Line
	1250 3450 1650 3450
Wire Wire Line
	1250 3550 1650 3550
Text Label 1650 3450 2    50   ~ 0
AUD_IN_R+
Text Label 1650 3550 2    50   ~ 0
AUD_IN_L+
$Comp
L power:GND #PWR?
U 1 1 5ECD23D1
P 1700 3600
AR Path="/5EDC2390/5ECD23D1" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD23D1" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1700 3350 50  0001 C CNN
F 1 "GND" H 1700 3450 50  0000 C CNN
F 2 "" H 1700 3600 50  0000 C CNN
F 3 "" H 1700 3600 50  0000 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3600 1700 3350
Wire Wire Line
	2300 2600 2650 2600
Wire Wire Line
	2650 3000 2300 3000
Wire Wire Line
	7450 1350 6950 1350
Wire Wire Line
	7450 1550 6950 1550
Wire Wire Line
	6950 1450 7450 1450
Wire Wire Line
	7450 1650 6950 1650
Text Label 6950 1350 0    50   ~ 0
AUD_IN_L+
Text Label 6950 1450 0    50   ~ 0
AUD_IN_L-
Text Label 6950 1550 0    50   ~ 0
AUD_IN_R-
Text Label 6950 1650 0    50   ~ 0
AUD_IN_R+
Text HLabel 6950 1350 0    50   Input ~ 0
AMP_IN_L+
Text HLabel 6950 1450 0    50   Input ~ 0
AMP_IN_L-
Text HLabel 6950 1550 0    50   Input ~ 0
AMP_IN_R-
Text HLabel 6950 1650 0    50   Input ~ 0
AMP_IN_R+
Wire Wire Line
	5100 1050 5100 850 
Text Label 5000 1050 2    50   ~ 0
AUD_O_L+
Wire Wire Line
	4600 1050 5000 1050
Wire Wire Line
	4600 950  5000 950 
Wire Wire Line
	4600 850  5100 850 
Text Label 5000 950  2    50   ~ 0
AUD_O_R+
$Comp
L power:GND #PWR?
U 1 1 5ECD23B2
P 5100 1050
AR Path="/5EDC2390/5ECD23B2" Ref="#PWR?"  Part="1" 
AR Path="/5ECBD457/5ECD23B2" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5100 800 50  0001 C CNN
F 1 "GND" H 5100 900 50  0000 C CNN
F 2 "" H 5100 1050 50  0000 C CNN
F 3 "" H 5100 1050 50  0000 C CNN
	1    5100 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 5ECD23AC
P 4400 950
AR Path="/5EDC2390/5ECD23AC" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECD23AC" Ref="J18"  Part="1" 
F 0 "J18" H 4380 1275 50  0000 C CNN
F 1 "AudioJack3_Ground" H 4380 1184 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 4400 950 50  0001 C CNN
F 3 "~" H 4400 950 50  0001 C CNN
	1    4400 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5ECF1294
P 7650 2100
AR Path="/5EDC2390/5ECF1294" Ref="J?"  Part="1" 
AR Path="/5ECBD457/5ECF1294" Ref="J22"  Part="1" 
F 0 "J22" H 7730 2092 50  0000 L CNN
F 1 "AUD_I2C" H 7730 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7650 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2100 6950 2100
Wire Wire Line
	6950 2200 7450 2200
Text Label 6950 2100 0    50   ~ 0
AUD_SCL
Text Label 6950 2200 0    50   ~ 0
AUD_SDA
Text HLabel 6950 2100 0    50   Input ~ 0
AMP_SCL
Text HLabel 6950 2200 0    50   Input ~ 0
AMP_SDA
$Comp
L kala:+VSENSOR_3V3 #PWR026
U 1 1 5ECFCCF6
P 2000 1150
F 0 "#PWR026" H 2000 1000 50  0001 C CNN
F 1 "+VSENSOR_3V3" H 2015 1323 50  0000 C CNN
F 2 "" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC

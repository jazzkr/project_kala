EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4500 4000 2500 2000
U 5E100A35
F0 "sensors" 50
F1 "sensors.sch" 50
F2 "SENSOR_SCL" I R 7000 4150 50 
F3 "SENSOR_SDA" I R 7000 4250 50 
F4 "MIC_P" I L 4500 4150 50 
F5 "MIC_N" I L 4500 4250 50 
$EndSheet
$Sheet
S 1000 1000 2500 2000
U 5E100DF6
F0 "power" 50
F1 "power.sch" 50
F2 "RESET_N" I R 3500 1150 50 
F3 "AXP_SDA" I R 3500 2700 50 
F4 "AXP_SCL" I R 3500 2800 50 
F5 "AXP_IRQ" I R 3500 2900 50 
$EndSheet
$Sheet
S 4500 1000 2500 2000
U 5E100F78
F0 "mcu" 50
F1 "mcu.sch" 50
F2 "RESET_N" I L 4500 1150 50 
F3 "SDC1_D3" I R 7000 2300 50 
F4 "SDC1_D2" I R 7000 2400 50 
F5 "SDC1_D1" I R 7000 2500 50 
F6 "SDC1_D0" I R 7000 2600 50 
F7 "SDC1_CMD" I R 7000 2700 50 
F8 "SDC1_CLK" I R 7000 2800 50 
F9 "MCU_SCL" I L 4500 2800 50 
F10 "MCU_SDA" I L 4500 2700 50 
F11 "UART1_RX" I R 7000 2050 50 
F12 "UART1_TX" I R 7000 1950 50 
F13 "MIC1P" I L 4500 2300 50 
F14 "MIC1N" I L 4500 2400 50 
F15 "HPOUTR" I R 7000 1200 50 
F16 "HPOUTL" I R 7000 1100 50 
F17 "MCU_INT5" I L 4500 2900 50 
F18 "MCU_INT4" I R 7000 1750 50 
F19 "HBIAS" I L 4500 2150 50 
F20 "UART2_TX" I L 4500 1750 50 
F21 "UART2_RX" I L 4500 1650 50 
F22 "MCU_INT2" I L 4500 1400 50 
F23 "MCU_INT3" I R 7000 1450 50 
F24 "MCU_GPIO2" I L 4500 1300 50 
F25 "MCU_GPIO1" I R 7000 1850 50 
F26 "MCU_GPIO0" I L 4500 2000 50 
$EndSheet
$Sheet
S 8000 1000 2500 2000
U 5E29628F
F0 "WiFi + BT" 50
F1 "wifi_bt.sch" 50
F2 "SDC_D2" I L 8000 2400 50 
F3 "SDC_D3" I L 8000 2300 50 
F4 "SDC_CLK" I L 8000 2800 50 
F5 "SDC_D0" I L 8000 2600 50 
F6 "SDC_D1" I L 8000 2500 50 
F7 "SDC_CMD" I L 8000 2700 50 
F8 "BT_UART_CTS" I L 8000 2150 50 
F9 "BT_UART_RX" I L 8000 1950 50 
F10 "BT_UART_TX" I L 8000 2050 50 
F11 "BT_WAKE" I L 8000 1850 50 
F12 "BT_IRQ" I L 8000 1750 50 
F13 "WLAN_IRQ" I L 8000 1450 50 
F14 "WLAN_DSI_N" I L 8000 1350 50 
F15 "BT_RST_N" I L 8000 1650 50 
$EndSheet
Wire Wire Line
	3500 1150 4500 1150
Wire Wire Line
	3500 2700 3700 2700
Wire Wire Line
	4500 2800 4350 2800
Wire Wire Line
	3500 2900 4500 2900
$Sheet
S 1000 4000 2500 2000
U 5E535362
F0 "led" 50
F1 "led_controller.sch" 50
F2 "LED_MCU_INT" I R 3500 4250 50 
F3 "LED_MCU_RESET_N" I R 3500 4350 50 
F4 "LED_MCU_UART0_RX" I R 3500 4500 50 
F5 "LED_MCU_UART0_TX" I R 3500 4600 50 
F6 "LED_MCU_UART1_RX" I R 3500 4750 50 
F7 "LED_MCU_SDA" I R 3500 5000 50 
F8 "LED_MCU_SCL" I R 3500 5100 50 
F9 "LED_MCU_UART1_TX" I R 3500 4850 50 
$EndSheet
Wire Wire Line
	8000 1950 7000 1950
Wire Wire Line
	7000 2300 8000 2300
Wire Wire Line
	8000 2400 7000 2400
Wire Wire Line
	7000 2500 8000 2500
Wire Wire Line
	8000 2600 7000 2600
Wire Wire Line
	7000 2700 8000 2700
Wire Wire Line
	8000 2800 7000 2800
Wire Wire Line
	7000 1750 8000 1750
Wire Wire Line
	4350 2800 4350 3150
Wire Wire Line
	4350 3150 7100 3150
Wire Wire Line
	7100 3150 7100 4050
Wire Wire Line
	7100 4150 7000 4150
Connection ~ 4350 2800
Wire Wire Line
	4350 2800 3750 2800
Wire Wire Line
	4300 2700 4300 3200
Wire Wire Line
	4300 3200 7150 3200
Wire Wire Line
	7150 3200 7150 3950
Wire Wire Line
	7150 4250 7000 4250
Connection ~ 4300 2700
Wire Wire Line
	4300 2700 4500 2700
Wire Wire Line
	4500 2300 4200 2300
Wire Wire Line
	4200 2300 4200 4150
Wire Wire Line
	4200 4150 4500 4150
Wire Wire Line
	4500 4300 4150 4300
Wire Wire Line
	4150 4300 4150 2400
Wire Wire Line
	4150 2400 4500 2400
Wire Wire Line
	3500 4750 4100 4750
Wire Wire Line
	4100 4750 4100 1650
Wire Wire Line
	4100 1650 4500 1650
Wire Wire Line
	3500 4850 4050 4850
Wire Wire Line
	4050 4850 4050 1750
Wire Wire Line
	4050 1750 4500 1750
Wire Wire Line
	3500 5000 3700 5000
Wire Wire Line
	3700 5000 3700 2700
Connection ~ 3700 2700
Wire Wire Line
	3700 2700 4300 2700
Wire Wire Line
	3500 5100 3750 5100
Wire Wire Line
	3750 5100 3750 2800
Connection ~ 3750 2800
Wire Wire Line
	3750 2800 3500 2800
$Sheet
S 8000 4000 2500 2000
U 5ECBD457
F0 "audio" 50
F1 "audio.sch" 50
F2 "AMP_IN_L+" I L 8000 4150 50 
F3 "AMP_IN_L-" I L 8000 4250 50 
F4 "AMP_IN_R-" I L 8000 4350 50 
F5 "AMP_IN_R+" I L 8000 4450 50 
F6 "AMP_SCL" I L 8000 4600 50 
F7 "AMP_SDA" I L 8000 4700 50 
$EndSheet
Wire Wire Line
	8000 4600 7200 4600
Wire Wire Line
	7200 4600 7200 4050
Wire Wire Line
	7200 4050 7100 4050
Connection ~ 7100 4050
Wire Wire Line
	7100 4050 7100 4150
Wire Wire Line
	8000 4700 7250 4700
Wire Wire Line
	7250 4700 7250 3950
Wire Wire Line
	7250 3950 7150 3950
Connection ~ 7150 3950
Wire Wire Line
	7150 3950 7150 4250
Wire Wire Line
	7350 4450 8000 4450
Wire Wire Line
	7000 2050 8000 2050
Wire Wire Line
	7400 4150 8000 4150
Wire Wire Line
	7350 1200 7000 1200
Wire Wire Line
	7350 1200 7350 4450
Wire Wire Line
	7400 1100 7000 1100
Wire Wire Line
	7400 1100 7400 4150
Wire Wire Line
	8000 1450 7000 1450
Wire Wire Line
	4500 1400 3650 1400
Wire Wire Line
	3650 1400 3650 4250
Wire Wire Line
	3650 4250 3500 4250
Wire Wire Line
	4500 1300 3600 1300
Wire Wire Line
	3600 1300 3600 4350
Wire Wire Line
	3600 4350 3500 4350
Wire Wire Line
	8000 1850 7000 1850
$EndSCHEMATC

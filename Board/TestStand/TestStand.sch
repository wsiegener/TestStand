EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TestStand"
Date "2020-06-30"
Rev "v0.1"
Comp "Billy Siegener"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U2
U 1 1 5ECF363C
P 1450 3450
F 0 "U2" H 1450 5000 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 1450 5100 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32U" H 1450 1950 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1150 3500 50  0001 C CNN
	1    1450 3450
	1    0    0    -1  
$EndComp
Text GLabel 850  2250 0    50   Input ~ 0
En
Text GLabel 2050 2250 2    50   Input ~ 0
Flash
Text GLabel 2050 2550 2    50   Input ~ 0
RXM
Text GLabel 2050 2350 2    50   Output ~ 0
TXM
$Comp
L power:GND #PWR018
U 1 1 5ED07398
P 1450 4850
F 0 "#PWR018" H 1450 4600 50  0001 C CNN
F 1 "GND" H 1455 4677 50  0000 C CNN
F 2 "" H 1450 4850 50  0001 C CNN
F 3 "" H 1450 4850 50  0001 C CNN
	1    1450 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5ED08B99
P 2200 1250
F 0 "#PWR03" H 2200 1100 50  0001 C CNN
F 1 "+3.3V" H 2215 1423 50  0000 C CNN
F 2 "" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5ED0D7E3
P 1250 6950
F 0 "SW1" V 1204 7098 50  0000 L CNN
F 1 "En" V 1295 7098 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 1250 7150 50  0001 C CNN
F 3 "~" H 1250 7150 50  0001 C CNN
	1    1250 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5ED10119
P 1250 6550
F 0 "R19" H 1320 6596 50  0000 L CNN
F 1 "470" V 1250 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1180 6550 50  0001 C CNN
F 3 "~" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5ED10C28
P 1250 7200
F 0 "#PWR028" H 1250 6950 50  0001 C CNN
F 1 "GND" H 1255 7027 50  0000 C CNN
F 2 "" H 1250 7200 50  0001 C CNN
F 3 "" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5ED11592
P 1250 6050
F 0 "#PWR022" H 1250 5900 50  0001 C CNN
F 1 "+3.3V" H 1250 6250 50  0000 C CNN
F 2 "" H 1250 6050 50  0001 C CNN
F 3 "" H 1250 6050 50  0001 C CNN
	1    1250 6050
	1    0    0    -1  
$EndComp
Text GLabel 1450 6350 2    50   Output ~ 0
En
$Comp
L Device:R R16
U 1 1 5ED1E113
P 1250 6200
F 0 "R16" H 1320 6246 50  0000 L CNN
F 1 "12k" V 1250 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1180 6200 50  0001 C CNN
F 3 "~" H 1250 6200 50  0001 C CNN
	1    1250 6200
	1    0    0    -1  
$EndComp
Text GLabel 2350 6350 2    50   Output ~ 0
Flash
$Comp
L power:GND #PWR029
U 1 1 5ED20A5B
P 2150 7200
F 0 "#PWR029" H 2150 6950 50  0001 C CNN
F 1 "GND" H 2155 7027 50  0000 C CNN
F 2 "" H 2150 7200 50  0001 C CNN
F 3 "" H 2150 7200 50  0001 C CNN
	1    2150 7200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5ED20FFD
P 2150 6950
F 0 "SW2" V 2104 7098 50  0000 L CNN
F 1 "Flash" V 2195 7098 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 2150 7150 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	1    2150 6950
	0    1    1    0   
$EndComp
Connection ~ 1250 6350
Text GLabel 7900 4900 0    50   Output ~ 0
MISO
Text GLabel 7900 4500 0    50   Input ~ 0
MOSI
Text GLabel 7900 4400 0    50   Input ~ 0
nCS
$Comp
L power:GND #PWR020
U 1 1 5ED6323B
P 10750 5450
F 0 "#PWR020" H 10750 5200 50  0001 C CNN
F 1 "GND" H 10755 5277 50  0000 C CNN
F 2 "" H 10750 5450 50  0001 C CNN
F 3 "" H 10750 5450 50  0001 C CNN
	1    10750 5450
	1    0    0    -1  
$EndComp
Text GLabel 2050 3850 2    50   Output ~ 0
MOSI
Text GLabel 2050 3550 2    50   Input ~ 0
MISO
Text GLabel 2050 3450 2    50   Output ~ 0
CLK
Text GLabel 2050 2750 2    50   Output ~ 0
nCS
Text GLabel 2050 3650 2    50   BiDi ~ 0
SDA
Text GLabel 2050 3750 2    50   Output ~ 0
SCK
Text Notes 2400 3750 2    50   ~ 0
I2C\n
Wire Notes Line
	2050 3600 2400 3600
Wire Notes Line
	2400 3600 2400 3800
Wire Notes Line
	2400 3800 2050 3800
Wire Notes Line
	2050 3800 2050 3600
$Comp
L Device:C C4
U 1 1 5EDCECDA
P 2450 1500
F 0 "C4" H 2500 1600 50  0000 L CNN
F 1 "0.1uF 10V" H 2400 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2488 1350 50  0001 C CNN
F 3 "~" H 2450 1500 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EDCECE2
P 2200 1800
F 0 "#PWR06" H 2200 1550 50  0001 C CNN
F 1 "GND" H 2205 1627 50  0000 C CNN
F 2 "" H 2200 1800 50  0001 C CNN
F 3 "" H 2200 1800 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 1950 1700
Wire Wire Line
	2450 1700 2200 1700
Wire Wire Line
	2200 1800 2200 1700
Connection ~ 2200 1700
Wire Wire Line
	2200 1700 1950 1700
Wire Wire Line
	2200 1250 2200 1300
Wire Wire Line
	1950 1300 2200 1300
Connection ~ 2200 1300
Wire Wire Line
	2200 1300 2450 1300
Wire Wire Line
	1950 1300 1950 1350
Text GLabel 2050 2650 2    50   Output ~ 0
~Ignition
$Comp
L Connector:Barrel_Jack J4
U 1 1 5EE2E69D
P 3550 4200
F 0 "J4" H 3607 4525 50  0000 C CNN
F 1 "9V Barrel Jack" H 3607 4434 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-036AH-SMT_Horizontal" H 3600 4160 50  0001 C CNN
F 3 "~" H 3600 4160 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4100 4000 4100
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5EE35922
P 5400 4100
F 0 "U3" H 5400 4342 50  0000 C CNN
F 1 "L7805" H 5400 4251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 5425 3950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5400 4050 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4700 4150
$Comp
L Regulator_Linear:LD1086D2M33TR U4
U 1 1 5EE57019
P 5400 4900
F 0 "U4" H 5400 5175 50  0000 C CNN
F 1 "LD1086D2M33TR" H 5400 5266 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 5400 5400 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/ld1086.pdf" H 5400 5400 50  0001 C CNN
	1    5400 4900
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 4100 4400 4100
Wire Wire Line
	4400 4900 4400 4100
Connection ~ 4400 4100
Wire Wire Line
	4400 4100 4700 4100
Wire Wire Line
	4700 4850 4700 4900
Wire Wire Line
	4700 4900 4400 4900
Wire Wire Line
	5400 4400 5400 4500
Wire Wire Line
	4700 4900 5000 4900
Connection ~ 4700 4900
Wire Wire Line
	5100 4100 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	4700 4450 4700 4500
Wire Wire Line
	4700 4500 5400 4500
Connection ~ 4700 4500
Wire Wire Line
	4700 4500 4700 4550
Connection ~ 5400 4500
Wire Wire Line
	5400 4500 5400 4600
Wire Wire Line
	3850 4300 3950 4300
Wire Wire Line
	3950 4300 3950 4450
$Comp
L power:GND #PWR016
U 1 1 5EEDECCA
P 3950 4450
F 0 "#PWR016" H 3950 4200 50  0001 C CNN
F 1 "GND" H 3955 4277 50  0000 C CNN
F 2 "" H 3950 4450 50  0001 C CNN
F 3 "" H 3950 4450 50  0001 C CNN
	1    3950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4900 5900 4850
Wire Wire Line
	5900 4450 5900 4500
Wire Wire Line
	5900 4100 5900 4150
Wire Wire Line
	5700 4100 5900 4100
Wire Wire Line
	5800 4900 5900 4900
Wire Wire Line
	5400 4500 5900 4500
$Comp
L power:+5V #PWR014
U 1 1 5EEF7E80
P 6350 4100
F 0 "#PWR014" H 6350 3950 50  0001 C CNN
F 1 "+5V" V 6350 4300 50  0000 C CNN
F 2 "" H 6350 4100 50  0001 C CNN
F 3 "" H 6350 4100 50  0001 C CNN
	1    6350 4100
	0    1    1    0   
$EndComp
Wire Notes Line
	6850 3750 6850 5400
Wire Notes Line
	3150 5400 3150 3750
$Comp
L power:GND #PWR017
U 1 1 5EE61B8A
P 6350 4500
F 0 "#PWR017" H 6350 4250 50  0001 C CNN
F 1 "GND" V 6350 4300 50  0000 C CNN
F 2 "" H 6350 4500 50  0001 C CNN
F 3 "" H 6350 4500 50  0001 C CNN
	1    6350 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5EEF6D9D
P 6350 4900
F 0 "#PWR019" H 6350 4750 50  0001 C CNN
F 1 "+3.3V" V 6350 5000 50  0000 L CNN
F 2 "" H 6350 4900 50  0001 C CNN
F 3 "" H 6350 4900 50  0001 C CNN
	1    6350 4900
	0    1    1    0   
$EndComp
Text GLabel 7850 4700 0    50   Input ~ 0
CLK
Wire Wire Line
	5950 1650 6300 1650
Connection ~ 5950 1650
$Comp
L power:GND #PWR05
U 1 1 5F170721
P 6300 1650
F 0 "#PWR05" H 6300 1400 50  0001 C CNN
F 1 "GND" H 6305 1477 50  0000 C CNN
F 2 "" H 6300 1650 50  0001 C CNN
F 3 "" H 6300 1650 50  0001 C CNN
	1    6300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1650 5950 1550
Wire Wire Line
	5650 1650 5950 1650
Wire Wire Line
	5650 1550 5650 1650
Wire Wire Line
	5050 1150 5250 1150
Connection ~ 5050 1150
Wire Wire Line
	5050 1050 5050 1150
Wire Wire Line
	5250 1150 5650 1150
Connection ~ 5250 1150
Wire Wire Line
	5250 1150 5250 1900
Wire Wire Line
	5650 1150 5950 1150
Connection ~ 5650 1150
Wire Wire Line
	5650 1150 5650 1250
Wire Wire Line
	4850 1150 4850 1500
Wire Wire Line
	5950 1150 5950 1250
Wire Wire Line
	4850 1150 5050 1150
Connection ~ 4850 1900
Wire Wire Line
	4850 1900 5150 1900
Wire Wire Line
	4600 1900 4850 1900
$Comp
L Device:C C2
U 1 1 5F13F7DB
P 5950 1400
F 0 "C2" H 6000 1500 50  0000 L CNN
F 1 "0.1uF" H 6000 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5988 1250 50  0001 C CNN
F 3 "~" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1800 6600 1900
Connection ~ 6600 1900
Wire Wire Line
	6600 1900 6600 2000
$Comp
L Device:C C7
U 1 1 5F0EF630
P 6600 2150
F 0 "C7" H 6650 2250 50  0000 L CNN
F 1 "0.1uF" H 6650 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6638 2000 50  0001 C CNN
F 3 "~" H 6600 2150 50  0001 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
Text Notes 5350 1450 0    50   ~ 0
1210
$Comp
L Device:C C1
U 1 1 5F0E77BA
P 5650 1400
F 0 "C1" H 5700 1500 50  0000 L CNN
F 1 "10uF" H 5450 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5688 1250 50  0001 C CNN
F 3 "~" H 5650 1400 50  0001 C CNN
	1    5650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2900 4200 2900
Wire Wire Line
	3950 2650 3950 2900
Wire Wire Line
	3650 2650 3950 2650
Wire Wire Line
	4100 2200 4200 2200
Wire Wire Line
	4100 2300 5300 2300
Connection ~ 4600 2200
Wire Wire Line
	4500 2200 4600 2200
Wire Wire Line
	4600 2200 5300 2200
Wire Wire Line
	5200 2400 5200 2750
Wire Wire Line
	5200 3050 5200 3150
$Comp
L power:GND #PWR013
U 1 1 5F056550
P 5200 3150
F 0 "#PWR013" H 5200 2900 50  0001 C CNN
F 1 "GND" H 5205 2977 50  0000 C CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F056221
P 5200 2900
F 0 "C9" H 5250 3000 50  0000 L CNN
F 1 "0.1uF" H 5250 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5238 2750 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2400 5200 2400
$Comp
L power:GND #PWR08
U 1 1 5F0385CC
P 3900 2250
F 0 "#PWR08" H 3900 2000 50  0001 C CNN
F 1 "GND" H 3905 2077 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
Connection ~ 4600 1900
Wire Wire Line
	4450 1900 4600 1900
$Comp
L Device:R R8
U 1 1 5F02A669
P 4350 2200
F 0 "R8" V 4450 2200 50  0000 C CNN
F 1 "8.2k" V 4350 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2200 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
	1    4350 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F02A086
P 4600 2050
F 0 "R7" V 4500 2050 50  0000 C CNN
F 1 "20k" V 4600 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2600 5300 2600
Wire Wire Line
	4700 2500 5300 2500
Wire Wire Line
	5200 2000 5200 1700
Wire Wire Line
	5300 2000 5200 2000
$Comp
L power:+5V #PWR01
U 1 1 5EFE3206
P 5050 1050
F 0 "#PWR01" H 5050 900 50  0001 C CNN
F 1 "+5V" H 5050 1250 50  0000 C CNN
F 2 "" H 5050 1050 50  0001 C CNN
F 3 "" H 5050 1050 50  0001 C CNN
	1    5050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1900 5250 1900
Wire Wire Line
	5150 2100 5300 2100
Wire Wire Line
	5150 1900 5150 2100
Wire Wire Line
	3650 2400 3650 2650
Wire Wire Line
	3700 2300 3550 2300
Wire Wire Line
	3700 2500 3700 2300
Wire Wire Line
	4200 2500 3700 2500
Wire Wire Line
	3650 1900 4050 1900
Wire Wire Line
	4050 1900 4150 1900
Connection ~ 4050 1900
Wire Wire Line
	4050 1850 4050 1900
Wire Wire Line
	3850 1500 4050 1500
Wire Wire Line
	4050 1500 4050 1550
Connection ~ 3850 1500
Wire Wire Line
	3650 1500 3650 1550
Wire Wire Line
	3850 1500 3650 1500
Wire Wire Line
	3850 1450 3850 1500
$Comp
L power:GND #PWR04
U 1 1 5EF9FB52
P 3850 1450
F 0 "#PWR04" H 3850 1200 50  0001 C CNN
F 1 "GND" H 3855 1277 50  0000 C CNN
F 2 "" H 3850 1450 50  0001 C CNN
F 3 "" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    1   
$EndComp
Text Notes 3350 1750 0    50   ~ 0
1210
Wire Wire Line
	3650 1850 3650 1900
Connection ~ 3650 1900
$Comp
L Device:C C6
U 1 1 5EF93B38
P 4050 1700
F 0 "C6" H 4100 1800 50  0000 L CNN
F 1 "0.1uF" H 3850 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 1550 50  0001 C CNN
F 3 "~" H 4050 1700 50  0001 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EF93557
P 3650 1700
F 0 "C5" H 3700 1800 50  0000 L CNN
F 1 "10uF" H 3450 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3688 1550 50  0001 C CNN
F 3 "~" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3650 1900
Wire Wire Line
	3600 2200 3600 1900
Wire Wire Line
	3550 2200 3600 2200
$Comp
L Device:L L1
U 1 1 5EF87F62
P 4300 1900
F 0 "L1" V 4400 1900 50  0000 C CNN
F 1 "3.3uH" V 4250 1900 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 1900 50  0001 C CNN
F 3 "~" H 4300 1900 50  0001 C CNN
	1    4300 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EF8287D
P 3600 2800
F 0 "#PWR010" H 3600 2550 50  0001 C CNN
F 1 "GND" H 3605 2627 50  0000 C CNN
F 2 "" H 3600 2800 50  0001 C CNN
F 3 "" H 3600 2800 50  0001 C CNN
	1    3600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 3600 2800
Wire Wire Line
	3550 2500 3600 2500
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5EF77E57
P 3350 2300
F 0 "J2" H 3350 2500 50  0000 C CNN
F 1 "Load Cell" H 3350 2000 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-0400_2x02_P3.00mm_Horizontal" H 3350 2300 50  0001 C CNN
F 3 "~" H 3350 2300 50  0001 C CNN
	1    3350 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 2400 3550 2400
Wire Wire Line
	5000 2600 5000 2900
Wire Wire Line
	4700 2900 5000 2900
Connection ~ 4700 2900
Wire Wire Line
	4700 2850 4700 2900
Connection ~ 4700 2500
Wire Wire Line
	4500 2900 4700 2900
Wire Wire Line
	4700 2500 4700 2550
Wire Wire Line
	4500 2500 4700 2500
$Comp
L Device:R R12
U 1 1 5EF50A34
P 4350 2900
F 0 "R12" V 4250 2900 50  0000 C CNN
F 1 "100" V 4350 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2900 50  0001 C CNN
F 3 "~" H 4350 2900 50  0001 C CNN
	1    4350 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5EF4FECF
P 4350 2500
F 0 "R10" V 4250 2500 50  0000 C CNN
F 1 "100" V 4350 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2500 50  0001 C CNN
F 3 "~" H 4350 2500 50  0001 C CNN
	1    4350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5EF47135
P 4700 2700
F 0 "C8" H 4750 2800 50  0000 L CNN
F 1 "0.1uF" H 4750 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 2550 50  0001 C CNN
F 3 "~" H 4700 2700 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5EF46683
P 6600 1800
F 0 "#PWR07" H 6600 1650 50  0001 C CNN
F 1 "+3.3V" H 6615 1973 50  0000 C CNN
F 2 "" H 6600 1800 50  0001 C CNN
F 3 "" H 6600 1800 50  0001 C CNN
	1    6600 1800
	1    0    0    -1  
$EndComp
NoConn ~ 6100 2200
NoConn ~ 6100 2600
NoConn ~ 6100 2500
$Comp
L hx711:HX711 U1
U 1 1 5EE10179
P 5700 2250
F 0 "U1" H 5700 2750 50  0000 C CNN
F 1 "HX711" H 5700 1750 50  0000 C CNN
F 2 "Package_SO:STC_SOP-16_3.9x9.9mm_P1.27mm" H 5700 2250 50  0001 C CNN
F 3 "" H 5700 2250 50  0001 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3150 750  3150 3500
Wire Notes Line
	6900 3500 6900 750 
Wire Wire Line
	2450 1300 2450 1350
Wire Wire Line
	2450 1650 2450 1700
Wire Wire Line
	1950 1300 1450 1300
Wire Wire Line
	1450 1300 1450 2050
Connection ~ 1950 1300
Text GLabel 2050 3150 2    50   Output ~ 0
StatusLED
Wire Notes Line
	3150 3750 6850 3750
Wire Notes Line
	3150 5400 6850 5400
Wire Notes Line
	750  7450 750  5700
Text Notes 3200 3450 0    50   ~ 0
Load Cell amp circuit
Text Notes 3200 5350 0    50   ~ 0
Power regulator\n
Text Notes 3700 7400 0    50   ~ 0
user i/o\n
$Comp
L Device:C C17
U 1 1 5EE731EB
P 1800 6750
F 0 "C17" H 1800 6850 50  0000 L CNN
F 1 "0.1uF" H 1800 6650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1838 6600 50  0001 C CNN
F 3 "~" H 1800 6750 50  0001 C CNN
	1    1800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7200 2150 7150
Connection ~ 2150 7150
$Comp
L Device:C C16
U 1 1 5EED533C
P 900 6750
F 0 "C16" H 900 6850 50  0000 L CNN
F 1 "0.1uF" H 900 6650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 938 6600 50  0001 C CNN
F 3 "~" H 900 6750 50  0001 C CNN
	1    900  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7150 1250 7200
Connection ~ 1250 7150
Wire Wire Line
	1250 6350 1450 6350
Wire Wire Line
	1250 6350 1250 6400
Wire Wire Line
	1250 6700 1250 6750
Wire Wire Line
	900  6350 900  6600
Wire Wire Line
	900  6900 900  7150
Wire Wire Line
	2150 6650 2150 6750
Wire Wire Line
	1800 6900 1800 7150
Wire Wire Line
	900  6350 1250 6350
Wire Wire Line
	900  7150 1250 7150
Wire Wire Line
	1800 7150 2150 7150
Connection ~ 5900 4100
Connection ~ 5900 4500
Wire Wire Line
	5900 4100 6250 4100
Connection ~ 5900 4900
Wire Wire Line
	5900 4900 6250 4900
Wire Wire Line
	5900 4500 6250 4500
Wire Wire Line
	5900 4500 5900 4550
$Comp
L Device:C C12
U 1 1 5F01286A
P 6250 4300
F 0 "C12" H 6300 4400 50  0000 L CNN
F 1 "0.1uF" H 6250 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 4150 50  0001 C CNN
F 3 "~" H 6250 4300 50  0001 C CNN
	1    6250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4100 6250 4150
Connection ~ 6250 4100
Wire Wire Line
	6250 4100 6350 4100
Wire Wire Line
	6250 4450 6250 4500
Connection ~ 6250 4500
Wire Wire Line
	6250 4500 6350 4500
$Comp
L Device:C C15
U 1 1 5F02A87C
P 6250 4700
F 0 "C15" H 6300 4600 50  0000 L CNN
F 1 "0.1uF" H 6250 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 4550 50  0001 C CNN
F 3 "~" H 6250 4700 50  0001 C CNN
	1    6250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4500 6250 4550
Wire Wire Line
	6250 4850 6250 4900
Connection ~ 6250 4900
Wire Wire Line
	6250 4900 6350 4900
$Comp
L Device:C C3
U 1 1 5EDCECE8
P 1950 1500
F 0 "C3" H 2000 1600 50  0000 L CNN
F 1 "10uF 10V" H 1750 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1988 1350 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F062583
P 2450 2450
F 0 "R9" V 2350 2450 50  0000 C CNN
F 1 "5k1" V 2450 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 2450 50  0001 C CNN
F 3 "~" H 2450 2450 50  0001 C CNN
	1    2450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2450 2050 2450
$Comp
L power:GND #PWR011
U 1 1 5F06F47D
P 2700 2950
F 0 "#PWR011" H 2700 2700 50  0001 C CNN
F 1 "GND" H 2705 2777 50  0000 C CNN
F 2 "" H 2700 2950 50  0001 C CNN
F 3 "" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 2700 2450
$Comp
L Device:R R13
U 1 1 5ED63F09
P 8500 4300
F 0 "R13" V 8400 4250 50  0000 L CNN
F 1 "12k" V 8500 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 4300 50  0001 C CNN
F 3 "~" H 8500 4300 50  0001 C CNN
	1    8500 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5ED64E2F
P 7450 4600
F 0 "R14" H 7250 4600 50  0000 L CNN
F 1 "12k" V 7450 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 4600 50  0001 C CNN
F 3 "~" H 7450 4600 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5ED65E75
P 7450 4200
F 0 "#PWR015" H 7450 4050 50  0001 C CNN
F 1 "+3.3V" H 7350 4350 50  0000 L CNN
F 2 "" H 7450 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4200 7450 4300
Wire Wire Line
	8350 4300 7550 4300
Wire Wire Line
	7450 4300 7450 4450
Connection ~ 7450 4300
Wire Wire Line
	7550 4300 7550 4600
Connection ~ 7550 4300
Wire Wire Line
	7550 4300 7450 4300
Wire Wire Line
	7450 4750 7450 5000
Wire Notes Line
	600  950  2900 950 
Wire Notes Line
	2900 950  2900 5100
Wire Notes Line
	2900 5100 600  5100
Wire Notes Line
	600  5100 600  950 
Text Notes 2400 5050 0    50   ~ 0
MCU
Wire Wire Line
	1800 6350 2150 6350
Wire Wire Line
	1800 6600 1800 6350
Wire Wire Line
	2150 6350 2350 6350
Connection ~ 2150 6350
$Comp
L power:+3.3V #PWR023
U 1 1 5ED23DA4
P 2150 6050
F 0 "#PWR023" H 2150 5900 50  0001 C CNN
F 1 "+3.3V" H 2150 6250 50  0000 C CNN
F 2 "" H 2150 6050 50  0001 C CNN
F 3 "" H 2150 6050 50  0001 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5ED1EE92
P 2150 6500
F 0 "R18" H 2220 6546 50  0000 L CNN
F 1 "470" V 2150 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 6500 50  0001 C CNN
F 3 "~" H 2150 6500 50  0001 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5ED0F977
P 2150 6200
F 0 "R17" H 2220 6246 50  0000 L CNN
F 1 "12k" V 2150 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 6200 50  0001 C CNN
F 3 "~" H 2150 6200 50  0001 C CNN
	1    2150 6200
	1    0    0    -1  
$EndComp
Text GLabel 3550 6200 1    50   Input ~ 0
StatusLED
$Comp
L Device:R R21
U 1 1 5EF17A38
P 3550 6950
F 0 "R21" H 3620 6996 50  0000 L CNN
F 1 "220" V 3550 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 6950 50  0001 C CNN
F 3 "~" H 3550 6950 50  0001 C CNN
	1    3550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6300 3550 6200
Wire Wire Line
	3550 6600 3550 6800
Wire Wire Line
	3550 7100 3550 7200
Wire Wire Line
	2900 7100 2900 7200
Wire Wire Line
	2900 6600 2900 6800
Wire Wire Line
	2900 6200 2900 6300
$Comp
L Device:LED D5
U 1 1 5EF03F92
P 3550 6450
F 0 "D5" V 3589 6332 50  0000 R CNN
F 1 "STATUS_LED" V 3498 6332 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W5.0mm_H2.0mm" H 3550 6450 50  0001 C CNN
F 3 "~" H 3550 6450 50  0001 C CNN
	1    3550 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5EF02C8A
P 2900 6450
F 0 "D4" V 2939 6332 50  0000 R CNN
F 1 "POWER_LED" V 2850 6350 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W5.0mm_H2.0mm" H 2900 6450 50  0001 C CNN
F 3 "~" H 2900 6450 50  0001 C CNN
	1    2900 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5EF0212C
P 3550 7200
F 0 "#PWR031" H 3550 6950 50  0001 C CNN
F 1 "GND" H 3555 7027 50  0000 C CNN
F 2 "" H 3550 7200 50  0001 C CNN
F 3 "" H 3550 7200 50  0001 C CNN
	1    3550 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5EF01C00
P 2900 7200
F 0 "#PWR030" H 2900 6950 50  0001 C CNN
F 1 "GND" H 2905 7027 50  0000 C CNN
F 2 "" H 2900 7200 50  0001 C CNN
F 3 "" H 2900 7200 50  0001 C CNN
	1    2900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 5EF010A1
P 2900 6200
F 0 "#PWR026" H 2900 6050 50  0001 C CNN
F 1 "+5V" H 2915 6373 50  0000 C CNN
F 2 "" H 2900 6200 50  0001 C CNN
F 3 "" H 2900 6200 50  0001 C CNN
	1    2900 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5EF006E0
P 2900 6950
F 0 "R20" H 2970 6996 50  0000 L CNN
F 1 "330" V 2900 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 6950 50  0001 C CNN
F 3 "~" H 2900 6950 50  0001 C CNN
	1    2900 6950
	1    0    0    -1  
$EndComp
Text GLabel 5550 6350 2    50   Input ~ 0
SCK
Text GLabel 5550 6250 2    50   BiDi ~ 0
SDA
$Comp
L power:+5V #PWR025
U 1 1 5F050FAE
P 5550 6150
F 0 "#PWR025" H 5550 6000 50  0001 C CNN
F 1 "+5V" V 5550 6350 50  0000 C CNN
F 2 "" H 5550 6150 50  0001 C CNN
F 3 "" H 5550 6150 50  0001 C CNN
	1    5550 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F0501CB
P 5550 6050
F 0 "#PWR024" H 5550 5800 50  0001 C CNN
F 1 "GND" V 5550 5850 50  0000 C CNN
F 2 "" H 5550 6050 50  0001 C CNN
F 3 "" H 5550 6050 50  0001 C CNN
	1    5550 6050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5F04F41E
P 5350 6150
F 0 "J6" H 5350 6350 50  0000 C CNN
F 1 "LCD Connector" H 5350 5850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5350 6150 50  0001 C CNN
F 3 "~" H 5350 6150 50  0001 C CNN
	1    5350 6150
	-1   0    0    -1  
$EndComp
NoConn ~ 850  3450
NoConn ~ 850  3550
NoConn ~ 850  3650
NoConn ~ 850  3750
NoConn ~ 850  3850
NoConn ~ 850  3950
Text GLabel 2050 3250 2    50   Input ~ 0
DOUT
Text GLabel 2050 3350 2    50   Output ~ 0
PD_SCK
Text GLabel 6100 2400 2    50   Input ~ 0
PD_SCK
Text GLabel 6100 2300 2    50   Output ~ 0
DOUT
$Comp
L power:GND #PWR09
U 1 1 5EF3DE52
P 6450 2750
F 0 "#PWR09" H 6450 2500 50  0001 C CNN
F 1 "GND" H 6455 2577 50  0000 C CNN
F 2 "" H 6450 2750 50  0001 C CNN
F 3 "" H 6450 2750 50  0001 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2300 6600 2700
Wire Wire Line
	6100 2000 6450 2000
Wire Wire Line
	6450 2000 6450 2100
Wire Wire Line
	6100 2100 6450 2100
Connection ~ 6450 2100
Wire Wire Line
	6100 1900 6600 1900
Wire Wire Line
	6450 2100 6450 2700
Wire Wire Line
	6450 2700 6600 2700
Connection ~ 6450 2700
Wire Wire Line
	6450 2700 6450 2750
Wire Notes Line
	3150 3500 6900 3500
Wire Notes Line
	3150 750  6900 750 
Text Notes 2400 3350 0    50   ~ 0
To HX711
Wire Notes Line
	2050 3200 2800 3200
Wire Notes Line
	2800 3200 2800 3400
Wire Notes Line
	2800 3400 2050 3400
Wire Notes Line
	2050 3400 2050 3200
$Comp
L Device:R R11
U 1 1 5EEA979E
P 2450 2850
F 0 "R11" V 2350 2850 50  0000 C CNN
F 1 "5k1" V 2450 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 2850 50  0001 C CNN
F 3 "~" H 2450 2850 50  0001 C CNN
	1    2450 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2850 2300 2850
Wire Wire Line
	2700 2450 2700 2850
Wire Wire Line
	2600 2850 2700 2850
Connection ~ 2700 2850
Wire Wire Line
	2700 2850 2700 2950
$Comp
L Device:C C10
U 1 1 5EF236CD
P 4700 4300
F 0 "C10" H 4750 4400 50  0000 L CNN
F 1 "0.1uF" H 4700 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 4150 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5EF23B8E
P 4700 4700
F 0 "C13" H 4750 4600 50  0000 L CNN
F 1 "0.1uF" H 4700 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 4550 50  0001 C CNN
F 3 "~" H 4700 4700 50  0001 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5EF24058
P 5900 4300
F 0 "C11" H 5950 4400 50  0000 L CNN
F 1 "10uF" H 5900 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 4150 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5EF24549
P 5900 4700
F 0 "C14" H 5950 4600 50  0000 L CNN
F 1 "10uF" H 5900 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 4550 50  0001 C CNN
F 3 "~" H 5900 4700 50  0001 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5EF57D9F
P 9600 2600
F 0 "J3" H 9700 2600 50  0000 L CNN
F 1 "Igniter" H 9500 2400 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 9600 2600 50  0001 C CNN
F 3 "~" H 9600 2600 50  0001 C CNN
	1    9600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2550 9300 2600
Wire Wire Line
	9400 2700 9300 2700
Wire Wire Line
	9300 2700 9300 2900
Wire Wire Line
	9300 2900 9850 2900
Connection ~ 9300 2900
$Comp
L power:GND #PWR012
U 1 1 5F198A8B
P 9300 3000
F 0 "#PWR012" H 9300 2750 50  0001 C CNN
F 1 "GND" H 9305 2827 50  0000 C CNN
F 2 "" H 9300 3000 50  0001 C CNN
F 3 "" H 9300 3000 50  0001 C CNN
	1    9300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1800 8900 1900
Text GLabel 8000 1600 0    50   Input ~ 0
~Ignition
Wire Wire Line
	8900 1900 8900 1950
Wire Wire Line
	9200 1250 9200 1200
$Comp
L power:+3.3V #PWR02
U 1 1 5F280AF9
P 9200 1150
F 0 "#PWR02" H 9200 1000 50  0001 C CNN
F 1 "+3.3V" H 9200 1350 50  0000 C CNN
F 2 "" H 9200 1150 50  0001 C CNN
F 3 "" H 9200 1150 50  0001 C CNN
	1    9200 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F2A2ABA
P 9200 1800
F 0 "R4" H 9270 1846 50  0000 L CNN
F 1 "5.1k" V 9200 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 1800 50  0001 C CNN
F 3 "~" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
Text GLabel 9250 1600 2    50   Input ~ 0
Continuity
$Comp
L Device:Q_PNP_BCE Q1
U 1 1 5F2C6B5B
P 8800 1600
F 0 "Q1" H 8990 1554 50  0000 L CNN
F 1 "BC807-40" H 8450 1800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9000 1700 50  0001 C CNN
F 3 "~" H 8800 1600 50  0001 C CNN
	1    8800 1600
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5F2C7C90
P 8500 1400
F 0 "R1" H 8570 1446 50  0000 L CNN
F 1 "12k" V 8500 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 1400 50  0001 C CNN
F 3 "~" H 8500 1400 50  0001 C CNN
	1    8500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1550 8500 1600
Wire Wire Line
	8500 1600 8600 1600
Wire Wire Line
	8500 1250 8500 1200
Wire Wire Line
	8500 1200 8900 1200
Wire Wire Line
	8900 1200 8900 1400
Connection ~ 8900 1200
$Comp
L Device:R R3
U 1 1 5F369030
P 8250 1600
F 0 "R3" V 8350 1550 50  0000 L CNN
F 1 "470" V 8250 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 1600 50  0001 C CNN
F 3 "~" H 8250 1600 50  0001 C CNN
	1    8250 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1600 8100 1600
Wire Wire Line
	8400 1600 8500 1600
Connection ~ 8500 1600
$Comp
L Device:R R2
U 1 1 5F38DE55
P 9200 1400
F 0 "R2" H 9270 1446 50  0000 L CNN
F 1 "33k" V 9200 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 1400 50  0001 C CNN
F 3 "~" H 9200 1400 50  0001 C CNN
	1    9200 1400
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5LE-1 K1
U 1 1 5EF557AD
P 9100 2250
F 0 "K1" H 9530 2296 50  0000 L CNN
F 1 "G5LE-1" H 9530 2205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 9550 2200 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
Connection ~ 8900 1900
Wire Wire Line
	8500 2100 8500 1900
Wire Wire Line
	8500 1900 8900 1900
Wire Wire Line
	9400 1950 9400 1900
Wire Notes Line
	750  5700 4150 5700
Wire Notes Line
	4150 5700 4150 7450
Wire Notes Line
	4150 7450 750  7450
Wire Notes Line
	7600 850  10350 850 
Wire Notes Line
	10350 850  10350 3250
Wire Notes Line
	10350 3250 7600 3250
Wire Notes Line
	7600 3250 7600 850 
Wire Wire Line
	9300 2600 9400 2600
Wire Wire Line
	8500 2900 8900 2900
Wire Wire Line
	8500 2400 8500 2900
Connection ~ 8900 2900
Wire Wire Line
	8900 2900 9300 2900
Wire Wire Line
	9300 2900 9300 3000
Wire Wire Line
	8900 2550 8900 2900
Text Notes 7650 3200 0    50   ~ 0
igniter relay\n
Wire Wire Line
	8900 1200 9200 1200
Connection ~ 9200 1200
Wire Wire Line
	9200 1200 9200 1150
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5EF49011
P 10100 2200
F 0 "J1" H 10050 2300 50  0000 L CNN
F 1 "9V_bat" H 10000 2000 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 10100 2200 50  0001 C CNN
F 3 "~" H 10100 2200 50  0001 C CNN
	1    10100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2300 9850 2300
Wire Wire Line
	9850 2300 9850 2900
Wire Wire Line
	5150 1700 5200 1700
NoConn ~ 850  2450
NoConn ~ 850  2550
NoConn ~ 2050 3950
NoConn ~ 2050 4050
NoConn ~ 2050 4150
NoConn ~ 2050 4250
NoConn ~ 2050 4350
NoConn ~ 2050 4450
NoConn ~ 2050 4550
Text GLabel 2050 2950 2    50   Input ~ 0
Continuity
Wire Wire Line
	9200 1550 9200 1600
Wire Wire Line
	9200 1600 9250 1600
Connection ~ 9200 1600
Wire Wire Line
	9200 1600 9200 1650
Wire Wire Line
	9850 2900 10300 2900
Wire Wire Line
	10300 2900 10300 1900
Connection ~ 9850 2900
$Comp
L Device:R R6
U 1 1 5F0EA04C
P 10150 1900
F 0 "R6" V 10250 1850 50  0000 L CNN
F 1 "10k" V 10150 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10080 1900 50  0001 C CNN
F 3 "~" H 10150 1900 50  0001 C CNN
	1    10150 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F0EA732
P 9850 1900
F 0 "R5" V 9950 1850 50  0000 L CNN
F 1 "20k" V 9850 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 1900 50  0001 C CNN
F 3 "~" H 9850 1900 50  0001 C CNN
	1    9850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 2200 9650 1900
Wire Wire Line
	9650 2200 9900 2200
Wire Wire Line
	9400 1900 9650 1900
Connection ~ 9650 1900
Wire Wire Line
	9650 1900 9700 1900
Wire Wire Line
	10000 1900 10000 1750
Connection ~ 10000 1900
$Comp
L Device:R R15
U 1 1 5F14A967
P 8100 4700
F 0 "R15" V 8200 4650 50  0000 L CNN
F 1 "100" V 8100 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 4700 50  0001 C CNN
F 3 "~" H 8100 4700 50  0001 C CNN
	1    8100 4700
	0    1    1    0   
$EndComp
Text GLabel 2050 3050 2    50   Input ~ 0
9VSense
Text GLabel 10000 1750 1    50   Output ~ 0
9VSense
$Comp
L Power_Protection:ESDA6V1BC6 D3
U 1 1 5F06379F
P 8450 5350
F 0 "D3" H 7850 5400 50  0000 L CNN
F 1 "ESDA6V1BC6" H 7650 5300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 8450 5000 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/21/07/21/e3/a8/df/42/a2/CD00001906.pdf/files/CD00001906.pdf/jcr:content/translations/en.CD00001906.pdf" V 8450 5350 50  0001 C CNN
	1    8450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5650 8450 5700
Wire Wire Line
	8450 5700 8850 5700
$Comp
L Connector:Micro_SD_Card J5
U 1 1 5ED5B2D6
P 9950 4600
F 0 "J5" H 9900 5317 50  0000 C CNN
F 1 "Micro_SD_Card" H 9900 5226 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Molex_104031-0811" H 11100 4900 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 9950 4600 50  0001 C CNN
	1    9950 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5EE31A55
P 4150 4100
F 0 "D2" H 4150 4200 50  0000 C CNN
F 1 "S1MTR" H 4150 4000 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4150 4100 50  0001 C CNN
F 3 "~" H 4150 4100 50  0001 C CNN
	1    4150 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F3D69D7
P 8500 2250
F 0 "D1" H 8500 2350 50  0000 C CNN
F 1 "S1MTR" H 8500 2150 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8500 2250 50  0001 C CNN
F 3 "~" H 8500 2250 50  0001 C CNN
	1    8500 2250
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J7
U 1 1 5F27E36F
P 5350 7200
F 0 "J7" H 5400 7517 50  0000 C CNN
F 1 "TC2030-IDC" H 5400 7426 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-FP_2x03_P1.27mm_Vertical" H 5350 7200 50  0001 C CNN
F 3 "~" H 5350 7200 50  0001 C CNN
	1    5350 7200
	1    0    0    -1  
$EndComp
Text GLabel 5050 7100 0    50   Output ~ 0
En
Wire Wire Line
	5150 7200 4750 7200
Wire Wire Line
	4750 7200 4750 7150
$Comp
L power:+3.3V #PWR027
U 1 1 5F2977FF
P 4750 7150
F 0 "#PWR027" H 4750 7000 50  0001 C CNN
F 1 "+3.3V" H 4765 7323 50  0000 C CNN
F 2 "" H 4750 7150 50  0001 C CNN
F 3 "" H 4750 7150 50  0001 C CNN
	1    4750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7300 4750 7300
Wire Wire Line
	4750 7300 4750 7350
$Comp
L power:GND #PWR032
U 1 1 5F2BB2DF
P 4750 7350
F 0 "#PWR032" H 4750 7100 50  0001 C CNN
F 1 "GND" H 4755 7177 50  0000 C CNN
F 2 "" H 4750 7350 50  0001 C CNN
F 3 "" H 4750 7350 50  0001 C CNN
	1    4750 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7100 5150 7100
Text GLabel 5900 7100 2    50   Output ~ 0
TXM
Text GLabel 5900 7200 2    50   Input ~ 0
RXM
Text GLabel 5900 7300 2    50   Input ~ 0
Flash
Wire Wire Line
	5650 7100 5900 7100
Wire Wire Line
	5650 7200 5900 7200
Wire Wire Line
	5650 7300 5900 7300
Wire Wire Line
	8850 4800 8850 5700
Wire Wire Line
	10750 5200 10750 5450
$Comp
L power:GND #PWR021
U 1 1 5F36CCEB
P 8450 5850
F 0 "#PWR021" H 8450 5600 50  0001 C CNN
F 1 "GND" H 8455 5677 50  0000 C CNN
F 2 "" H 8450 5850 50  0001 C CNN
F 3 "" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5850 8450 5700
Connection ~ 8450 5700
Wire Notes Line
	7200 3700 10850 3700
Wire Notes Line
	10850 3700 10850 6100
Wire Notes Line
	7200 3700 7200 6100
Wire Notes Line
	7200 6100 10850 6100
Wire Notes Line
	4450 5700 6500 5700
Wire Notes Line
	6500 5700 6500 7700
Wire Notes Line
	4450 5700 4450 7700
Wire Notes Line
	4450 7700 6500 7700
Wire Wire Line
	4100 2200 4100 2300
Wire Wire Line
	3900 2250 3900 2200
Wire Wire Line
	3900 2200 4100 2200
Connection ~ 4100 2200
$Comp
L Device:Q_PNP_BCE Q2
U 1 1 5EFF2E71
P 4950 1700
F 0 "Q2" H 5150 1650 50  0000 L CNN
F 1 "BC807-40" H 5150 1750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 5150 1800 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 4900 8250 5050
Connection ~ 8250 4900
Wire Wire Line
	8350 4700 8350 5050
Wire Wire Line
	7550 4600 9050 4600
Wire Wire Line
	8650 4300 9050 4300
Wire Wire Line
	8850 4800 9050 4800
Wire Wire Line
	8250 4900 9050 4900
Wire Wire Line
	7450 5000 9050 5000
Wire Wire Line
	8350 4700 9050 4700
Wire Wire Line
	7850 4700 7950 4700
Wire Wire Line
	8250 4700 8350 4700
Connection ~ 8350 4700
Wire Wire Line
	7900 4900 8250 4900
Wire Wire Line
	7900 4500 8550 4500
Wire Wire Line
	7900 4400 8650 4400
Wire Wire Line
	8550 5050 8550 4500
Connection ~ 8550 4500
Wire Wire Line
	8550 4500 9050 4500
Wire Wire Line
	8650 4400 8650 5050
Connection ~ 8650 4400
Wire Wire Line
	8650 4400 9050 4400
$EndSCHEMATC

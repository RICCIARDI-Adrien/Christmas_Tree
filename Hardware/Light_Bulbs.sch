EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Light bulbs"
Date ""
Rev ""
Comp "Adrien RICCIARDI"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	10450 1700 10400 1700
Wire Wire Line
	1250 4900 1300 4900
Wire Wire Line
	1250 4500 1300 4500
Wire Wire Line
	1250 2050 1300 2050
Wire Wire Line
	1250 1650 1300 1650
Wire Wire Line
	10450 2150 10400 2150
Wire Wire Line
	1250 4100 1300 4100
Wire Wire Line
	1250 3700 1300 3700
Wire Wire Line
	1250 2450 1300 2450
Wire Wire Line
	10450 2600 10400 2600
$Comp
L PIC18F23K22:PIC18F23K22 U1
U 1 1 5DE6F313
P 6150 4450
F 0 "U1" H 6150 5820 50  0000 C CNN
F 1 "PIC18F23K22" H 6150 5729 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4750 9600 5350
Wire Wire Line
	9200 4850 9200 4550
Wire Wire Line
	9500 4150 9500 4450
Wire Wire Line
	9600 4350 9600 4050
Wire Wire Line
	9600 4050 8150 4050
Wire Wire Line
	8150 4350 8200 4350
Wire Wire Line
	8200 5350 8200 4350
Wire Wire Line
	9400 4650 9400 4850
Text Notes 9800 4000 0    59   ~ 0
PICkit 3 standard pinout\nwithout LVP pin
$Comp
L power:GND #PWR0110
U 1 1 5DF3EDF6
P 8750 5850
F 0 "#PWR0110" H 8750 5600 50  0001 C CNN
F 1 "GND" H 8755 5677 50  0000 C CNN
F 2 "" H 8750 5850 50  0001 C CNN
F 3 "" H 8750 5850 50  0001 C CNN
	1    8750 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5DF3EDFC
P 9200 4850
F 0 "#PWR0111" H 9200 4600 50  0001 C CNN
F 1 "GND" H 9205 4677 50  0000 C CNN
F 2 "" H 9200 4850 50  0001 C CNN
F 3 "" H 9200 4850 50  0001 C CNN
	1    9200 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFA145B
P 8750 5100
AR Path="/5DE1DFF6/5DFA145B" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DFA145B" Ref="R98"  Part="1" 
F 0 "R98" H 8820 5146 50  0000 L CNN
F 1 "10K" H 8820 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 5100 50  0001 C CNN
F 3 "~" H 8750 5100 50  0001 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5DFA591A
P 8750 4850
F 0 "#PWR0112" H 8750 4700 50  0001 C CNN
F 1 "+5V" H 8765 5023 50  0000 C CNN
F 2 "" H 8750 4850 50  0001 C CNN
F 3 "" H 8750 4850 50  0001 C CNN
	1    8750 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFA8AD3
P 8500 5350
AR Path="/5DE1DFF6/5DFA8AD3" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DFA8AD3" Ref="R97"  Part="1" 
F 0 "R97" V 8400 5250 50  0000 L CNN
F 1 "220" V 8600 5250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8430 5350 50  0001 C CNN
F 3 "~" H 8500 5350 50  0001 C CNN
	1    8500 5350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5DFB5CEE
P 9400 4850
F 0 "#PWR0113" H 9400 4700 50  0001 C CNN
F 1 "+5V" H 9415 5023 50  0000 C CNN
F 2 "" H 9400 4850 50  0001 C CNN
F 3 "" H 9400 4850 50  0001 C CNN
	1    9400 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5DFB7332
P 8750 5600
F 0 "C4" H 8865 5646 50  0000 L CNN
F 1 "100n-25V" H 8865 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8788 5450 50  0001 C CNN
F 3 "~" H 8750 5600 50  0001 C CNN
	1    8750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4650 9400 4650
Wire Wire Line
	9800 4750 9600 4750
Wire Wire Line
	9200 4550 9800 4550
Wire Wire Line
	9500 4450 9800 4450
Wire Wire Line
	9800 4350 9600 4350
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5DDF0B46
P 10000 4550
F 0 "J1" H 9950 4900 50  0000 L CNN
F 1 "DNP" H 9950 4200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10000 4550 50  0001 C CNN
F 3 "~" H 10000 4550 50  0001 C CNN
	1    10000 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DDF5E99
P 4050 5550
F 0 "#PWR0106" H 4050 5300 50  0001 C CNN
F 1 "GND" H 4055 5377 50  0000 C CNN
F 2 "" H 4050 5550 50  0001 C CNN
F 3 "" H 4050 5550 50  0001 C CNN
	1    4050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5450 4050 5450
Wire Wire Line
	4050 5450 4050 5550
Wire Wire Line
	4150 5350 4050 5350
Wire Wire Line
	4050 5350 4050 5450
Connection ~ 4050 5450
Wire Wire Line
	4050 3350 4150 3350
$Comp
L Device:C C1
U 1 1 5DE05CC3
P 4550 2700
F 0 "C1" H 4665 2746 50  0000 L CNN
F 1 "100n-25V" H 4600 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4588 2550 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DDF165E
P 5100 2700
F 0 "C2" H 5215 2746 50  0000 L CNN
F 1 "1u-25V" H 5150 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 2550 50  0001 C CNN
F 3 "~" H 5100 2700 50  0001 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DDF2D76
P 5600 2700
F 0 "C3" H 5715 2746 50  0000 L CNN
F 1 "10u-25V" H 5650 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5638 2550 50  0001 C CNN
F 3 "~" H 5600 2700 50  0001 C CNN
	1    5600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4150 9500 4150
Wire Wire Line
	9600 5350 8750 5350
Wire Wire Line
	8750 5250 8750 5350
Wire Wire Line
	8750 5350 8750 5450
Connection ~ 8750 5350
Wire Wire Line
	8750 5350 8650 5350
Wire Wire Line
	8350 5350 8200 5350
Wire Wire Line
	8750 4850 8750 4950
Wire Wire Line
	8750 5750 8750 5850
$Comp
L power:GND #PWR0109
U 1 1 5DF0D1D6
P 5100 2950
F 0 "#PWR0109" H 5100 2700 50  0001 C CNN
F 1 "GND" H 5105 2777 50  0000 C CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2850 4550 2900
Wire Wire Line
	4550 2900 5100 2900
Wire Wire Line
	5100 2900 5100 2950
Wire Wire Line
	5100 2900 5100 2850
Connection ~ 5100 2900
Wire Wire Line
	5100 2900 5600 2900
Wire Wire Line
	5600 2900 5600 2850
$Comp
L power:+5V #PWR0114
U 1 1 5DF13942
P 5100 2450
F 0 "#PWR0114" H 5100 2300 50  0001 C CNN
F 1 "+5V" H 5115 2623 50  0000 C CNN
F 2 "" H 5100 2450 50  0001 C CNN
F 3 "" H 5100 2450 50  0001 C CNN
	1    5100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2450 5100 2500
Wire Wire Line
	5600 2550 5600 2500
Wire Wire Line
	5600 2500 5100 2500
Connection ~ 5100 2500
Wire Wire Line
	5100 2500 5100 2550
Wire Wire Line
	4550 2550 4550 2500
Wire Wire Line
	5100 2500 4550 2500
Wire Wire Line
	4050 2500 4550 2500
Wire Wire Line
	4050 2500 4050 3350
Connection ~ 4550 2500
NoConn ~ 8150 3450
NoConn ~ 8150 3550
NoConn ~ 8150 3650
NoConn ~ 8150 3750
NoConn ~ 4150 3550
NoConn ~ 4150 3650
NoConn ~ 4150 3750
NoConn ~ 4150 3850
NoConn ~ 4150 4050
NoConn ~ 4150 5150
$Comp
L Device:R R?
U 1 1 5DE5C497
P 10250 2600
AR Path="/5DE1DFF6/5DE5C497" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C497" Ref="R91"  Part="1" 
F 0 "R91" V 10150 2500 50  0000 L CNN
F 1 "220" V 10400 2500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10180 2600 50  0001 C CNN
F 3 "~" H 10250 2600 50  0001 C CNN
	1    10250 2600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C47F
P 10600 2600
AR Path="/5DE1DFF6/5DE5C47F" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C47F" Ref="D91"  Part="1" 
F 0 "D91" H 10650 2700 50  0000 R CNN
F 1 "Blue" H 10700 2450 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 10600 2600 50  0001 C CNN
F 3 "~" H 10600 2600 50  0001 C CNN
	1    10600 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C491
P 1450 2450
AR Path="/5DE1DFF6/5DE5C491" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C491" Ref="R90"  Part="1" 
F 0 "R90" V 1350 2350 50  0000 L CNN
F 1 "220" V 1600 2350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 2450 50  0001 C CNN
F 3 "~" H 1450 2450 50  0001 C CNN
	1    1450 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C479
P 1100 2450
AR Path="/5DE1DFF6/5DE5C479" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C479" Ref="D90"  Part="1" 
F 0 "D90" H 1150 2550 50  0000 R CNN
F 1 "Yellow" H 1250 2300 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 2450 50  0001 C CNN
F 3 "~" H 1100 2450 50  0001 C CNN
	1    1100 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C467
P 1450 3700
AR Path="/5DE1DFF6/5DE5C467" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C467" Ref="R89"  Part="1" 
F 0 "R89" V 1350 3600 50  0000 L CNN
F 1 "220" V 1600 3600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 3700 50  0001 C CNN
F 3 "~" H 1450 3700 50  0001 C CNN
	1    1450 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C44F
P 1100 3700
AR Path="/5DE1DFF6/5DE5C44F" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C44F" Ref="D89"  Part="1" 
F 0 "D89" H 1150 3800 50  0000 R CNN
F 1 "Red" H 1150 3550 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 3700 50  0001 C CNN
F 3 "~" H 1100 3700 50  0001 C CNN
	1    1100 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C461
P 1450 4100
AR Path="/5DE1DFF6/5DE5C461" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C461" Ref="R88"  Part="1" 
F 0 "R88" V 1350 4000 50  0000 L CNN
F 1 "220" V 1600 4000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 4100 50  0001 C CNN
F 3 "~" H 1450 4100 50  0001 C CNN
	1    1450 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C449
P 1100 4100
AR Path="/5DE1DFF6/5DE5C449" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C449" Ref="D88"  Part="1" 
F 0 "D88" H 1150 4200 50  0000 R CNN
F 1 "Red" H 1150 3950 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 4100 50  0001 C CNN
F 3 "~" H 1100 4100 50  0001 C CNN
	1    1100 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C45B
P 10250 2150
AR Path="/5DE1DFF6/5DE5C45B" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C45B" Ref="R87"  Part="1" 
F 0 "R87" V 10150 2050 50  0000 L CNN
F 1 "220" V 10400 2050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10180 2150 50  0001 C CNN
F 3 "~" H 10250 2150 50  0001 C CNN
	1    10250 2150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C443
P 10600 2150
AR Path="/5DE1DFF6/5DE5C443" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C443" Ref="D87"  Part="1" 
F 0 "D87" H 10650 2250 50  0000 R CNN
F 1 "Blue" H 10650 2000 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 10600 2150 50  0001 C CNN
F 3 "~" H 10600 2150 50  0001 C CNN
	1    10600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C455
P 1450 1650
AR Path="/5DE1DFF6/5DE5C455" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C455" Ref="R86"  Part="1" 
F 0 "R86" V 1350 1550 50  0000 L CNN
F 1 "220" V 1600 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 1650 50  0001 C CNN
F 3 "~" H 1450 1650 50  0001 C CNN
	1    1450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C43D
P 1100 1650
AR Path="/5DE1DFF6/5DE5C43D" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C43D" Ref="D86"  Part="1" 
F 0 "D86" H 1150 1750 50  0000 R CNN
F 1 "Yellow" H 1250 1500 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 1650 50  0001 C CNN
F 3 "~" H 1100 1650 50  0001 C CNN
	1    1100 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C42B
P 1450 2050
AR Path="/5DE1DFF6/5DE5C42B" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C42B" Ref="R85"  Part="1" 
F 0 "R85" V 1350 1950 50  0000 L CNN
F 1 "220" V 1600 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 2050 50  0001 C CNN
F 3 "~" H 1450 2050 50  0001 C CNN
	1    1450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C413
P 1100 2050
AR Path="/5DE1DFF6/5DE5C413" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C413" Ref="D85"  Part="1" 
F 0 "D85" H 1150 2150 50  0000 R CNN
F 1 "Yellow" H 1250 1900 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 2050 50  0001 C CNN
F 3 "~" H 1100 2050 50  0001 C CNN
	1    1100 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C425
P 1450 4500
AR Path="/5DE1DFF6/5DE5C425" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C425" Ref="R84"  Part="1" 
F 0 "R84" V 1350 4400 50  0000 L CNN
F 1 "220" V 1600 4400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 4500 50  0001 C CNN
F 3 "~" H 1450 4500 50  0001 C CNN
	1    1450 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C40D
P 1100 4500
AR Path="/5DE1DFF6/5DE5C40D" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C40D" Ref="D84"  Part="1" 
F 0 "D84" H 1150 4600 50  0000 R CNN
F 1 "Red" H 1150 4350 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 4500 50  0001 C CNN
F 3 "~" H 1100 4500 50  0001 C CNN
	1    1100 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C41F
P 1450 4900
AR Path="/5DE1DFF6/5DE5C41F" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C41F" Ref="R83"  Part="1" 
F 0 "R83" V 1350 4800 50  0000 L CNN
F 1 "220" V 1600 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 4900 50  0001 C CNN
F 3 "~" H 1450 4900 50  0001 C CNN
	1    1450 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C407
P 1100 4900
AR Path="/5DE1DFF6/5DE5C407" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C407" Ref="D83"  Part="1" 
F 0 "D83" H 1150 5000 50  0000 R CNN
F 1 "Red" H 1150 4750 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 4900 50  0001 C CNN
F 3 "~" H 1100 4900 50  0001 C CNN
	1    1100 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C419
P 10250 1700
AR Path="/5DE1DFF6/5DE5C419" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C419" Ref="R82"  Part="1" 
F 0 "R82" V 10150 1600 50  0000 L CNN
F 1 "220" V 10400 1600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10180 1700 50  0001 C CNN
F 3 "~" H 10250 1700 50  0001 C CNN
	1    10250 1700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C401
P 10600 1700
AR Path="/5DE1DFF6/5DE5C401" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C401" Ref="D82"  Part="1" 
F 0 "D82" H 10650 1800 50  0000 R CNN
F 1 "Blue" H 10650 1550 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 10600 1700 50  0001 C CNN
F 3 "~" H 10600 1700 50  0001 C CNN
	1    10600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DF66A29
P 10850 1600
F 0 "#PWR0104" H 10850 1450 50  0001 C CNN
F 1 "+5V" H 10865 1773 50  0000 C CNN
F 2 "" H 10850 1600 50  0001 C CNN
F 3 "" H 10850 1600 50  0001 C CNN
	1    10850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1700 10850 1700
Wire Wire Line
	10850 1700 10850 1600
Wire Wire Line
	10850 1700 10850 2150
Wire Wire Line
	10850 2150 10750 2150
Connection ~ 10850 1700
Wire Wire Line
	10850 2150 10850 2600
Wire Wire Line
	10850 2600 10750 2600
Connection ~ 10850 2150
Wire Wire Line
	10000 2150 10000 2600
Connection ~ 10000 2150
Wire Wire Line
	10000 1700 10100 1700
Wire Wire Line
	10100 2150 10000 2150
Wire Wire Line
	10000 2600 10100 2600
$Comp
L power:+5V #PWR0105
U 1 1 5E023F76
P 850 1550
F 0 "#PWR0105" H 850 1400 50  0001 C CNN
F 1 "+5V" H 865 1723 50  0000 C CNN
F 2 "" H 850 1550 50  0001 C CNN
F 3 "" H 850 1550 50  0001 C CNN
	1    850  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E03761B
P 2550 2500
F 0 "#PWR0115" H 2550 2250 50  0001 C CNN
F 1 "GND" H 2555 2327 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E03922D
P 2750 2250
AR Path="/5DE1DFF6/5E03922D" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5E03922D" Ref="R99"  Part="1" 
F 0 "R99" H 2680 2204 50  0000 R CNN
F 1 "10K" H 2680 2295 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 2250 50  0001 C CNN
F 3 "~" H 2750 2250 50  0001 C CNN
	1    2750 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  1550 850  1650
Wire Wire Line
	850  1650 950  1650
Wire Wire Line
	850  1650 850  2050
Connection ~ 850  1650
Wire Wire Line
	850  2050 850  2450
Wire Wire Line
	850  2450 950  2450
Connection ~ 850  2050
Wire Wire Line
	1600 1650 1700 1650
Wire Wire Line
	1700 1650 1700 2050
Wire Wire Line
	1700 2050 1600 2050
Wire Wire Line
	1700 2050 1700 2450
Wire Wire Line
	1700 2450 1600 2450
Connection ~ 1700 2050
Wire Wire Line
	1700 1650 2350 1650
Connection ~ 1700 1650
Wire Wire Line
	2350 1650 2350 1850
$Comp
L power:+5V #PWR0116
U 1 1 5E148131
P 850 3600
F 0 "#PWR0116" H 850 3450 50  0001 C CNN
F 1 "+5V" H 865 3773 50  0000 C CNN
F 2 "" H 850 3600 50  0001 C CNN
F 3 "" H 850 3600 50  0001 C CNN
	1    850  3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  4100 950  4100
Wire Wire Line
	850  3600 850  3700
Connection ~ 850  3700
Wire Wire Line
	850  3700 850  4100
Wire Wire Line
	850  4100 850  4500
Wire Wire Line
	850  4500 950  4500
Connection ~ 850  4100
Wire Wire Line
	850  4500 850  4900
Wire Wire Line
	850  4900 950  4900
Connection ~ 850  4500
Wire Wire Line
	1600 3700 1700 3700
Wire Wire Line
	1700 3700 1700 4100
Wire Wire Line
	1700 4100 1600 4100
Wire Wire Line
	1700 4100 1700 4250
Wire Wire Line
	1700 4500 1600 4500
Connection ~ 1700 4100
Wire Wire Line
	1700 4500 1700 4900
Wire Wire Line
	1700 4900 1600 4900
Connection ~ 1700 4500
Wire Wire Line
	2350 4350 2350 4250
Wire Wire Line
	2350 4250 1700 4250
Connection ~ 1700 4250
Wire Wire Line
	1700 4250 1700 4500
$Comp
L power:GND #PWR0117
U 1 1 5E1844B1
P 9150 2650
F 0 "#PWR0117" H 9150 2400 50  0001 C CNN
F 1 "GND" H 9155 2477 50  0000 C CNN
F 2 "" H 9150 2650 50  0001 C CNN
F 3 "" H 9150 2650 50  0001 C CNN
	1    9150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1844BC
P 8950 2400
AR Path="/5DE1DFF6/5E1844BC" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5E1844BC" Ref="R101"  Part="1" 
F 0 "R101" H 9019 2354 50  0000 L CNN
F 1 "10K" H 9019 2445 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8880 2400 50  0001 C CNN
F 3 "~" H 8950 2400 50  0001 C CNN
	1    8950 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 1700 10000 2150
Wire Wire Line
	9350 1700 10000 1700
Wire Wire Line
	9350 1700 9350 2000
Connection ~ 10000 1700
Wire Wire Line
	8150 3950 8450 3950
Wire Wire Line
	850  2050 950  2050
Wire Wire Line
	850  3700 950  3700
$Comp
L Device:LED D?
U 1 1 5DE5C485
P 1550 7200
AR Path="/5DE1DFF6/5DE5C485" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C485" Ref="D92"  Part="1" 
F 0 "D92" H 1543 6945 50  0000 C CNN
F 1 "Yellow" H 1543 7036 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
	1    1550 7200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE5C48B
P 1550 6750
AR Path="/5DE1DFF6/5DE5C48B" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C48B" Ref="D93"  Part="1" 
F 0 "D93" H 1543 6495 50  0000 C CNN
F 1 "Yellow" H 1543 6586 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 1550 6750 50  0001 C CNN
F 3 "~" H 1550 6750 50  0001 C CNN
	1    1550 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 7200 1400 7200
Wire Wire Line
	1350 6750 1400 6750
Wire Wire Line
	1800 7200 1700 7200
Wire Wire Line
	1800 6750 1700 6750
$Comp
L Device:LED D?
U 1 1 5DE5C4B6
P 1550 6300
AR Path="/5DE1DFF6/5DE5C4B6" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE5C4B6" Ref="D94"  Part="1" 
F 0 "D94" H 1543 6045 50  0000 C CNN
F 1 "Yellow" H 1543 6136 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 1550 6300 50  0001 C CNN
F 3 "~" H 1550 6300 50  0001 C CNN
	1    1550 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 6300 1400 6300
Wire Wire Line
	1800 6300 1700 6300
Wire Wire Line
	850  7200 1050 7200
Wire Wire Line
	850  6750 1050 6750
Wire Wire Line
	850  6300 1050 6300
$Comp
L Device:LED D?
U 1 1 5DE64C0F
P 1550 5850
AR Path="/5DE1DFF6/5DE64C0F" Ref="D?"  Part="1" 
AR Path="/5DE2A82E/5DE64C0F" Ref="D95"  Part="1" 
F 0 "D95" H 1543 5595 50  0000 C CNN
F 1 "Yellow" H 1543 5686 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 1550 5850 50  0001 C CNN
F 3 "~" H 1550 5850 50  0001 C CNN
	1    1550 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 5850 1400 5850
Wire Wire Line
	1800 5850 1700 5850
Wire Wire Line
	850  5850 1050 5850
$Comp
L power:+5V #PWR0107
U 1 1 5DE43B64
P 850 5750
F 0 "#PWR0107" H 850 5600 50  0001 C CNN
F 1 "+5V" H 865 5923 50  0000 C CNN
F 2 "" H 850 5750 50  0001 C CNN
F 3 "" H 850 5750 50  0001 C CNN
	1    850  5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DE64C19
P 1200 5850
AR Path="/5DE1DFF6/5DE64C19" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE64C19" Ref="R95"  Part="1" 
F 0 "R95" V 1407 5850 50  0000 C CNN
F 1 "220" V 1316 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 5850 50  0001 C CNN
F 3 "~" H 1200 5850 50  0001 C CNN
	1    1200 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C4BC
P 1200 6300
AR Path="/5DE1DFF6/5DE5C4BC" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C4BC" Ref="R94"  Part="1" 
F 0 "R94" V 1407 6300 50  0000 C CNN
F 1 "220" V 1316 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 6300 50  0001 C CNN
F 3 "~" H 1200 6300 50  0001 C CNN
	1    1200 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C4A3
P 1200 6750
AR Path="/5DE1DFF6/5DE5C4A3" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C4A3" Ref="R93"  Part="1" 
F 0 "R93" V 1407 6750 50  0000 C CNN
F 1 "220" V 1316 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 6750 50  0001 C CNN
F 3 "~" H 1200 6750 50  0001 C CNN
	1    1200 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE5C49D
P 1200 7200
AR Path="/5DE1DFF6/5DE5C49D" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5DE5C49D" Ref="R92"  Part="1" 
F 0 "R92" V 1407 7200 50  0000 C CNN
F 1 "220" V 1316 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1130 7200 50  0001 C CNN
F 3 "~" H 1200 7200 50  0001 C CNN
	1    1200 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 7200 1800 6750
Connection ~ 1800 6750
Wire Wire Line
	1800 6750 1800 6500
Wire Wire Line
	1800 6500 1800 6300
Connection ~ 1800 6500
Wire Wire Line
	1800 6300 1800 5850
Connection ~ 1800 6300
Wire Wire Line
	850  6300 850  5850
Connection ~ 850  6300
Wire Wire Line
	850  7200 850  6750
Connection ~ 850  6750
Wire Wire Line
	850  6300 850  6750
Wire Wire Line
	850  5750 850  5850
Connection ~ 850  5850
Wire Wire Line
	3200 4650 3200 6800
Wire Wire Line
	3200 4650 4150 4650
Wire Wire Line
	3150 3950 4150 3950
NoConn ~ 4150 4150
NoConn ~ 4150 4250
NoConn ~ 4150 4450
NoConn ~ 4150 4750
NoConn ~ 4150 4850
NoConn ~ 4150 4950
NoConn ~ 4150 5050
NoConn ~ 8150 3850
Wire Wire Line
	8450 3950 8450 2200
Wire Wire Line
	3150 2050 3150 3950
Wire Notes Line
	650  5400 3100 5400
Wire Notes Line
	3100 5400 3100 7550
Wire Notes Line
	3100 7550 650  7550
Wire Notes Line
	650  7550 650  5400
Text Notes 2900 7500 0    50   ~ 0
Star
$Comp
L Transistor_FET:DMG3414U Q4
U 1 1 5F7B58C1
P 9250 2200
F 0 "Q4" H 9454 2246 50  0000 L CNN
F 1 "DMG3414U" H 9454 2155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 2125 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds31739.pdf" H 9250 2200 50  0001 L CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2400 9350 2600
Wire Wire Line
	9350 2600 9150 2600
Wire Wire Line
	9150 2600 9150 2650
Wire Wire Line
	9150 2600 8950 2600
Wire Wire Line
	8950 2600 8950 2550
Connection ~ 9150 2600
Wire Wire Line
	8950 2200 8950 2250
Wire Wire Line
	8450 2200 8950 2200
Wire Wire Line
	8950 2200 9050 2200
Connection ~ 8950 2200
$Comp
L Transistor_FET:DMG3414U Q3
U 1 1 5F80105F
P 2450 2050
F 0 "Q3" H 2655 2096 50  0000 L CNN
F 1 "DMG3414U" H 2655 2005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2650 1975 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds31739.pdf" H 2450 2050 50  0001 L CNN
	1    2450 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 2250 2350 2450
Wire Wire Line
	2350 2450 2550 2450
Wire Wire Line
	2550 2450 2550 2500
Wire Wire Line
	2550 2450 2750 2450
Wire Wire Line
	2750 2450 2750 2400
Connection ~ 2550 2450
Wire Wire Line
	2750 2050 2750 2100
Wire Wire Line
	2750 2050 3150 2050
Wire Wire Line
	2750 2050 2650 2050
Connection ~ 2750 2050
$Comp
L power:GND #PWR0103
U 1 1 5F854E3C
P 2550 5000
F 0 "#PWR0103" H 2550 4750 50  0001 C CNN
F 1 "GND" H 2555 4827 50  0000 C CNN
F 2 "" H 2550 5000 50  0001 C CNN
F 3 "" H 2550 5000 50  0001 C CNN
	1    2550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F854E42
P 2750 4750
AR Path="/5DE1DFF6/5F854E42" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5F854E42" Ref="R100"  Part="1" 
F 0 "R100" H 2680 4704 50  0000 R CNN
F 1 "10K" H 2680 4795 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2680 4750 50  0001 C CNN
F 3 "~" H 2750 4750 50  0001 C CNN
	1    2750 4750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:DMG3414U Q2
U 1 1 5F854E49
P 2450 4550
F 0 "Q2" H 2655 4596 50  0000 L CNN
F 1 "DMG3414U" H 2655 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2650 4475 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds31739.pdf" H 2450 4550 50  0001 L CNN
	1    2450 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 4750 2350 4950
Wire Wire Line
	2350 4950 2550 4950
Wire Wire Line
	2550 4950 2550 5000
Wire Wire Line
	2550 4950 2750 4950
Wire Wire Line
	2750 4950 2750 4900
Connection ~ 2550 4950
Wire Wire Line
	2750 4550 2750 4600
Wire Wire Line
	2750 4550 2650 4550
Connection ~ 2750 4550
Wire Wire Line
	2750 4550 4150 4550
$Comp
L power:GND #PWR0108
U 1 1 5F887EE9
P 2600 7250
F 0 "#PWR0108" H 2600 7000 50  0001 C CNN
F 1 "GND" H 2605 7077 50  0000 C CNN
F 2 "" H 2600 7250 50  0001 C CNN
F 3 "" H 2600 7250 50  0001 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F887EEF
P 2800 7000
AR Path="/5DE1DFF6/5F887EEF" Ref="R?"  Part="1" 
AR Path="/5DE2A82E/5F887EEF" Ref="R96"  Part="1" 
F 0 "R96" H 2730 6954 50  0000 R CNN
F 1 "10K" H 2730 7045 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2730 7000 50  0001 C CNN
F 3 "~" H 2800 7000 50  0001 C CNN
	1    2800 7000
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:DMG3414U Q1
U 1 1 5F887EF6
P 2500 6800
F 0 "Q1" H 2705 6846 50  0000 L CNN
F 1 "DMG3414U" H 2705 6755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2700 6725 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds31739.pdf" H 2500 6800 50  0001 L CNN
	1    2500 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 7000 2400 7200
Wire Wire Line
	2400 7200 2600 7200
Wire Wire Line
	2600 7200 2600 7250
Wire Wire Line
	2600 7200 2800 7200
Wire Wire Line
	2800 7200 2800 7150
Connection ~ 2600 7200
Wire Wire Line
	2800 6800 2800 6850
Wire Wire Line
	2800 6800 2700 6800
Wire Wire Line
	3200 6800 2800 6800
Connection ~ 2800 6800
Wire Wire Line
	2400 6500 2400 6600
Wire Wire Line
	1800 6500 2400 6500
$EndSCHEMATC

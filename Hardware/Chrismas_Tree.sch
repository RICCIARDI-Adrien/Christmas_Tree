EESchema Schematic File Version 4
LIBS:Chrismas_Tree-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Chrismas tree hierarchical view"
Date ""
Rev ""
Comp "Adrien RICCIARDI"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1800 1900 1250 1100
U 5DE1DFF6
F0 "Tree shape" 50
F1 "Tree_Shape.sch" 50
$EndSheet
$Sheet
S 1800 3500 1250 1100
U 5DE2A82E
F0 "Light bulbs" 50
F1 "Light_Bulbs.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DE4B967
P 4800 1800
F 0 "H1" H 4900 1849 50  0000 L CNN
F 1 "Hole" H 4900 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 4800 1800 50  0001 C CNN
F 3 "~" H 4800 1800 50  0001 C CNN
	1    4800 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DE4DC82
P 5250 1800
F 0 "H2" H 5350 1849 50  0000 L CNN
F 1 "Hole" H 5350 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 5250 1800 50  0001 C CNN
F 3 "~" H 5250 1800 50  0001 C CNN
	1    5250 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DE4DF24
P 5700 1800
F 0 "H3" H 5800 1849 50  0000 L CNN
F 1 "Hole" H 5800 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 5700 1800 50  0001 C CNN
F 3 "~" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DE4E445
P 6150 1800
F 0 "H4" H 6250 1849 50  0000 L CNN
F 1 "Hole" H 6250 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 6150 1800 50  0001 C CNN
F 3 "~" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5DE4E44F
P 6600 1800
F 0 "H5" H 6700 1849 50  0000 L CNN
F 1 "Hole" H 6700 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 6600 1800 50  0001 C CNN
F 3 "~" H 6600 1800 50  0001 C CNN
	1    6600 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5DE4E459
P 7050 1800
F 0 "H6" H 7150 1849 50  0000 L CNN
F 1 "Hole" H 7150 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.5mm_Pad" H 7050 1800 50  0001 C CNN
F 3 "~" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DE4EE07
P 5950 2000
F 0 "#PWR0102" H 5950 1750 50  0001 C CNN
F 1 "GND" H 5955 1827 50  0000 C CNN
F 2 "" H 5950 2000 50  0001 C CNN
F 3 "" H 5950 2000 50  0001 C CNN
	1    5950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1900 4800 1950
Wire Wire Line
	4800 1950 5250 1950
Wire Wire Line
	5250 1950 5250 1900
Wire Wire Line
	5250 1950 5700 1950
Wire Wire Line
	5700 1950 5700 1900
Connection ~ 5250 1950
Wire Wire Line
	5700 1950 5950 1950
Wire Wire Line
	6150 1950 6150 1900
Connection ~ 5700 1950
Wire Wire Line
	5950 1950 5950 2000
Connection ~ 5950 1950
Wire Wire Line
	5950 1950 6150 1950
Wire Wire Line
	6150 1950 6600 1950
Wire Wire Line
	6600 1950 6600 1900
Connection ~ 6150 1950
Wire Wire Line
	6600 1950 7050 1950
Wire Wire Line
	7050 1950 7050 1900
Connection ~ 6600 1950
$EndSCHEMATC

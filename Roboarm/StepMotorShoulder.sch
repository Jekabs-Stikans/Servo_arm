EESchema Schematic File Version 4
LIBS:Roboarm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Roboarm-rescue:Stepper_Motor_bipolar_2x-Custom_draws M2
U 1 1 5DDC06F8
P 6550 2750
AR Path="/5DD44174/5DDC06F8" Ref="M2"  Part="1" 
AR Path="/5DDDA1B6/5DDC06F8" Ref="M?"  Part="1" 
F 0 "M2" H 7050 2850 50  0000 L CNN
F 1 "Motor_Shoulder" H 7050 2750 50  0000 L TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 6410 2890 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6410 2890 50  0001 C CNN
	1    6550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6100 2700
Wire Wire Line
	6500 2300 6600 2300
Wire Wire Line
	4000 2500 6100 2500
Wire Wire Line
	4400 3000 6100 3000
Text HLabel 2950 950  0    50   Input ~ 0
2V
$Comp
L power:GND #PWR03
U 1 1 5DEB73A7
P 2950 1900
F 0 "#PWR03" H 2950 1650 50  0001 C CNN
F 1 "GND" H 2955 1727 50  0000 C CNN
F 2 "" H 2950 1900 50  0001 C CNN
F 3 "" H 2950 1900 50  0001 C CNN
	1    2950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1900 2950 1850
Text HLabel 7250 1650 2    50   Input ~ 0
A
Text HLabel 5850 1650 0    50   Input ~ 0
B
Text HLabel 7250 1150 2    50   Input ~ 0
B
Text HLabel 3550 1150 0    50   Input ~ 0
C
Text HLabel 3550 1650 0    50   Input ~ 0
D
Text HLabel 4850 1650 2    50   Input ~ 0
C
Text HLabel 4850 1150 2    50   Input ~ 0
D
Text HLabel 5850 1150 0    50   Input ~ 0
A
Wire Wire Line
	2950 950  3850 950 
Wire Wire Line
	2950 1850 3850 1850
Wire Wire Line
	3850 1450 3850 1400
Connection ~ 3850 1400
Wire Wire Line
	3850 1400 3850 1350
Wire Wire Line
	4400 1400 4550 1400
Wire Wire Line
	4550 1400 4550 1450
Wire Wire Line
	4550 1400 4550 1350
Connection ~ 4550 1400
Wire Wire Line
	4400 1400 4400 1450
Text HLabel 5850 1150 0    50   Input ~ 0
A
Text HLabel 5850 1650 0    50   Input ~ 0
B
Text HLabel 4850 1150 2    50   Input ~ 0
D
Text HLabel 4850 1650 2    50   Input ~ 0
C
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA56
P 3750 1150
AR Path="/5DEEBA56" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA56" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA56" Ref="Q17"  Part="1" 
F 0 "Q17" H 3950 1150 50  0000 L CNN
F 1 "FZT651" H 4038 1105 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3950 1250 50  0001 C CNN
F 3 "~" H 3750 1150 50  0001 C CNN
	1    3750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA5D
P 4650 1150
AR Path="/5DEEBA5D" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA5D" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA5D" Ref="Q19"  Part="1" 
F 0 "Q19" H 4850 1150 50  0000 L CNN
F 1 "FZT651" H 4938 1105 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4850 1250 50  0001 C CNN
F 3 "~" H 4650 1150 50  0001 C CNN
	1    4650 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA64
P 3750 1650
AR Path="/5DEEBA64" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA64" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA64" Ref="Q18"  Part="1" 
F 0 "Q18" H 4000 1650 50  0000 L CNN
F 1 "FZT651" H 4038 1605 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3950 1750 50  0001 C CNN
F 3 "~" H 3750 1650 50  0001 C CNN
	1    3750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1400 4000 1450
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA6C
P 4650 1650
AR Path="/5DEEBA6C" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA6C" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA6C" Ref="Q20"  Part="1" 
F 0 "Q20" H 4900 1650 50  0000 L CNN
F 1 "FZT651" H 4938 1605 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4850 1750 50  0001 C CNN
F 3 "~" H 4650 1650 50  0001 C CNN
	1    4650 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 1450 4400 1450
Connection ~ 4400 1450
Wire Wire Line
	4400 1450 4400 3000
Wire Wire Line
	3850 1400 4000 1400
Wire Wire Line
	3950 1450 4000 1450
Connection ~ 4000 1450
Wire Wire Line
	4000 1450 4000 2500
Wire Wire Line
	6150 1450 6150 1400
Connection ~ 6150 1400
Wire Wire Line
	6150 1400 6150 1350
Wire Wire Line
	6800 1400 6950 1400
Wire Wire Line
	6950 1400 6950 1450
Wire Wire Line
	6950 1400 6950 1350
Connection ~ 6950 1400
Wire Wire Line
	6800 1400 6800 1450
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA82
P 6050 1150
AR Path="/5DEEBA82" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA82" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA82" Ref="Q21"  Part="1" 
F 0 "Q21" H 6250 1150 50  0000 L CNN
F 1 "FZT651" H 6338 1105 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6250 1250 50  0001 C CNN
F 3 "~" H 6050 1150 50  0001 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA89
P 7050 1150
AR Path="/5DEEBA89" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA89" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA89" Ref="Q23"  Part="1" 
F 0 "Q23" H 7250 1150 50  0000 L CNN
F 1 "FZT651" H 7338 1105 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7250 1250 50  0001 C CNN
F 3 "~" H 7050 1150 50  0001 C CNN
	1    7050 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA90
P 6050 1650
AR Path="/5DEEBA90" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA90" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA90" Ref="Q22"  Part="1" 
F 0 "Q22" H 6300 1650 50  0000 L CNN
F 1 "FZT651" H 6338 1605 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6250 1750 50  0001 C CNN
F 3 "~" H 6050 1650 50  0001 C CNN
	1    6050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1400 6300 1450
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEEBA98
P 7050 1650
AR Path="/5DEEBA98" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEEBA98" Ref="Q?"  Part="1" 
AR Path="/5DD44174/5DEEBA98" Ref="Q24"  Part="1" 
F 0 "Q24" H 7300 1650 50  0000 L CNN
F 1 "FZT651" H 7338 1605 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7250 1750 50  0001 C CNN
F 3 "~" H 7050 1650 50  0001 C CNN
	1    7050 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 1450 6800 1450
Connection ~ 6800 1450
Wire Wire Line
	6150 1400 6300 1400
Wire Wire Line
	6250 1450 6300 1450
Connection ~ 6300 1450
Connection ~ 3850 950 
Wire Wire Line
	3850 950  3950 950 
Connection ~ 3950 950 
Wire Wire Line
	3950 950  4450 950 
Connection ~ 3850 1850
Wire Wire Line
	3850 1850 4550 1850
Connection ~ 4550 1850
Wire Wire Line
	4550 1850 6150 1850
Connection ~ 4450 950 
Wire Wire Line
	4450 950  4550 950 
Connection ~ 4550 950 
Wire Wire Line
	4550 950  6150 950 
Connection ~ 6850 950 
Wire Wire Line
	6850 950  6950 950 
Connection ~ 6250 950 
Wire Wire Line
	6250 950  6850 950 
Connection ~ 6150 950 
Wire Wire Line
	6150 950  6250 950 
Connection ~ 6150 1850
Wire Wire Line
	6150 1850 6950 1850
Wire Wire Line
	6300 1450 6300 2300
Wire Wire Line
	6800 1450 6800 2300
$EndSCHEMATC

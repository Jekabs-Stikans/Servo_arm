EESchema Schematic File Version 4
LIBS:Roboarm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Motor:Stepper_Motor_bipolar M3
U 1 1 5DE5ED7F
P 7050 2750
AR Path="/5DDDA1B6/5DE5ED7F" Ref="M3"  Part="1" 
AR Path="/5DDE6987/5DE5ED7F" Ref="M?"  Part="1" 
AR Path="/5DDF16D9/5DE5ED7F" Ref="M1"  Part="1" 
F 0 "M1" H 7238 2873 50  0000 L CNN
F 1 "Motor_Base" H 7238 2782 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7060 2740 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 7060 2740 50  0001 C CNN
	1    7050 2750
	1    0    0    -1  
$EndComp
Text HLabel 3550 1100 0    50   Input ~ 0
2V
Wire Wire Line
	4450 1600 4450 1550
Connection ~ 4450 1550
Wire Wire Line
	4450 1550 4450 1500
Wire Wire Line
	5000 1550 5150 1550
Wire Wire Line
	5150 1550 5150 1600
Wire Wire Line
	5150 1550 5150 1500
Connection ~ 5150 1550
Wire Wire Line
	5000 2850 6750 2850
Wire Wire Line
	5000 1550 5000 1600
Wire Wire Line
	3550 2000 3550 2050
$Comp
L power:GND #PWR?
U 1 1 5DF092F6
P 3550 2050
AR Path="/5DD44174/5DF092F6" Ref="#PWR?"  Part="1" 
AR Path="/5DDF16D9/5DF092F6" Ref="#PWR013"  Part="1" 
AR Path="/5DDDA1B6/5DF092F6" Ref="#PWR014"  Part="1" 
F 0 "#PWR013" H 3550 1800 50  0001 C CNN
F 1 "GND" H 3555 1877 50  0000 C CNN
F 2 "" H 3550 2050 50  0001 C CNN
F 3 "" H 3550 2050 50  0001 C CNN
	1    3550 2050
	1    0    0    -1  
$EndComp
Text HLabel 6500 1300 0    50   Input ~ 0
A
Text HLabel 7800 1800 2    50   Input ~ 0
A
Text HLabel 6500 1800 0    50   Input ~ 0
B
Text HLabel 7800 1300 2    50   Input ~ 0
B
Text HLabel 4150 1300 0    50   Input ~ 0
C
Text HLabel 4150 1800 0    50   Input ~ 0
D
Text HLabel 5450 1300 2    50   Input ~ 0
D
Text HLabel 5450 1800 2    50   Input ~ 0
C
Wire Wire Line
	3550 1100 4450 1100
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE4895
P 4350 1300
AR Path="/5DEE4895" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE4895" Ref="Q1"  Part="1" 
AR Path="/5DDDA1B6/5DEE4895" Ref="Q9"  Part="1" 
F 0 "Q1" H 4550 1300 50  0000 L CNN
F 1 "FZT651" H 4638 1255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4550 1400 50  0001 C CNN
F 3 "~" H 4350 1300 50  0001 C CNN
	1    4350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1100 4550 1100
Connection ~ 4450 1100
Connection ~ 4550 1100
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE507D
P 5250 1300
AR Path="/5DEE507D" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE507D" Ref="Q3"  Part="1" 
AR Path="/5DDDA1B6/5DEE507D" Ref="Q11"  Part="1" 
F 0 "Q3" H 5450 1300 50  0000 L CNN
F 1 "FZT651" H 5538 1255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5450 1400 50  0001 C CNN
F 3 "~" H 5250 1300 50  0001 C CNN
	1    5250 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 1100 5050 1100
Wire Wire Line
	5050 1100 5150 1100
Connection ~ 5050 1100
Connection ~ 5150 1100
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE590D
P 4350 1800
AR Path="/5DEE590D" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE590D" Ref="Q2"  Part="1" 
AR Path="/5DDDA1B6/5DEE590D" Ref="Q10"  Part="1" 
F 0 "Q2" H 4600 1800 50  0000 L CNN
F 1 "FZT651" H 4638 1755 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4550 1900 50  0001 C CNN
F 3 "~" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2000 4450 2000
Wire Wire Line
	4450 2000 5150 2000
Connection ~ 4450 2000
Wire Wire Line
	4600 1550 4600 1600
Wire Wire Line
	4600 2650 6750 2650
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE79EC
P 5250 1800
AR Path="/5DEE79EC" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE79EC" Ref="Q4"  Part="1" 
AR Path="/5DDDA1B6/5DEE79EC" Ref="Q12"  Part="1" 
F 0 "Q4" H 5500 1800 50  0000 L CNN
F 1 "FZT651" H 5538 1755 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5450 1900 50  0001 C CNN
F 3 "~" H 5250 1800 50  0001 C CNN
	1    5250 1800
	-1   0    0    -1  
$EndComp
Connection ~ 5150 2000
Wire Wire Line
	5050 1600 5000 1600
Connection ~ 5000 1600
Wire Wire Line
	5000 1600 5000 2850
Wire Wire Line
	4450 1550 4600 1550
Wire Wire Line
	4550 1600 4600 1600
Connection ~ 4600 1600
Wire Wire Line
	4600 1600 4600 2650
Wire Wire Line
	5150 2000 6800 2000
Wire Wire Line
	5150 1100 6800 1100
Wire Wire Line
	6800 1600 6800 1550
Connection ~ 6800 1550
Wire Wire Line
	6800 1550 6800 1500
Wire Wire Line
	7350 1550 7500 1550
Wire Wire Line
	7500 1550 7500 1600
Wire Wire Line
	7500 1550 7500 1500
Connection ~ 7500 1550
Wire Wire Line
	7350 1550 7350 1600
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE9190
P 6700 1300
AR Path="/5DEE9190" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE9190" Ref="Q5"  Part="1" 
AR Path="/5DDDA1B6/5DEE9190" Ref="Q13"  Part="1" 
F 0 "Q5" H 6900 1300 50  0000 L CNN
F 1 "FZT651" H 6988 1255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6900 1400 50  0001 C CNN
F 3 "~" H 6700 1300 50  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE9197
P 7600 1300
AR Path="/5DEE9197" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE9197" Ref="Q7"  Part="1" 
AR Path="/5DDDA1B6/5DEE9197" Ref="Q15"  Part="1" 
F 0 "Q7" H 7800 1300 50  0000 L CNN
F 1 "FZT651" H 7888 1255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7800 1400 50  0001 C CNN
F 3 "~" H 7600 1300 50  0001 C CNN
	1    7600 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE919E
P 6700 1800
AR Path="/5DEE919E" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE919E" Ref="Q6"  Part="1" 
AR Path="/5DDDA1B6/5DEE919E" Ref="Q14"  Part="1" 
F 0 "Q6" H 6950 1800 50  0000 L CNN
F 1 "FZT651" H 6988 1755 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6900 1900 50  0001 C CNN
F 3 "~" H 6700 1800 50  0001 C CNN
	1    6700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1550 6950 1600
$Comp
L Device:Q_NPN_BCEC Q?
U 1 1 5DEE91A6
P 7600 1800
AR Path="/5DEE91A6" Ref="Q?"  Part="1" 
AR Path="/5DDF16D9/5DEE91A6" Ref="Q8"  Part="1" 
AR Path="/5DDDA1B6/5DEE91A6" Ref="Q16"  Part="1" 
F 0 "Q8" H 7850 1800 50  0000 L CNN
F 1 "FZT651" H 7888 1755 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7800 1900 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 1600 7350 1600
Connection ~ 7350 1600
Wire Wire Line
	7350 1600 7350 2450
Wire Wire Line
	6800 1550 6950 1550
Wire Wire Line
	6900 1600 6950 1600
Connection ~ 6950 1600
Wire Wire Line
	6950 1600 6950 2450
Wire Wire Line
	7150 2450 7350 2450
Connection ~ 6800 2000
Wire Wire Line
	6800 2000 7500 2000
Connection ~ 6800 1100
Wire Wire Line
	6800 1100 6900 1100
Connection ~ 6900 1100
Wire Wire Line
	6900 1100 7400 1100
Connection ~ 7400 1100
Wire Wire Line
	7400 1100 7500 1100
$EndSCHEMATC

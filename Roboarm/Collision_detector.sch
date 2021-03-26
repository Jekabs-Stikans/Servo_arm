EESchema Schematic File Version 4
LIBS:Roboarm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Device:LED_ALT D?
U 1 1 5DF6766A
P 5750 2850
AR Path="/5DF6766A" Ref="D?"  Part="1" 
AR Path="/5DF66CB5/5DF6766A" Ref="D4"  Part="1" 
F 0 "D4" V 5788 2928 50  0000 L CNN
F 1 "IR_LED" V 5697 2928 50  0000 L CNN
F 2 "" H 5750 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
	1    5750 2850
	0    1    -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 1 1 5DF67671
P 6650 3900
AR Path="/5DF67671" Ref="U?"  Part="1" 
AR Path="/5DF66CB5/5DF67671" Ref="U3"  Part="1" 
F 0 "U3" H 6700 3750 50  0000 C CNN
F 1 "LM358" H 6750 4050 50  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 6650 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6650 3900 50  0001 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5DF67678
P 6050 4000
AR Path="/5DF67678" Ref="RV?"  Part="1" 
AR Path="/5DF66CB5/5DF67678" Ref="RV3"  Part="1" 
F 0 "RV3" V 6050 4075 50  0000 R CNN
F 1 "10k" H 6000 4000 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YL" H 6050 4000 50  0001 C CNN
F 3 "~" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 6350 4000
$Comp
L power:GND #PWR?
U 1 1 5DF67680
P 5800 4250
AR Path="/5DF67680" Ref="#PWR?"  Part="1" 
AR Path="/5DF66CB5/5DF67680" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5800 4000 50  0001 C CNN
F 1 "GND" H 5805 4077 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF67686
P 6550 3600
AR Path="/5DF67686" Ref="#PWR?"  Part="1" 
AR Path="/5DF66CB5/5DF67686" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 6550 3450 50  0001 C CNN
F 1 "+5V" H 6565 3773 50  0000 C CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3800 5400 3850
Wire Wire Line
	5400 4200 5400 4150
Wire Wire Line
	6050 4200 6050 4150
Wire Wire Line
	5400 4200 5800 4200
Wire Wire Line
	5800 4250 5800 4200
Connection ~ 5800 4200
Wire Wire Line
	5800 4200 6050 4200
$Comp
L Device:R R?
U 1 1 5DF67693
P 5750 3150
AR Path="/5DF67693" Ref="R?"  Part="1" 
AR Path="/5DF66CB5/5DF67693" Ref="R7"  Part="1" 
F 0 "R7" V 5750 3100 50  0000 L CNN
F 1 "100R" H 5800 3150 50  0000 L CNN
F 2 "" V 5680 3150 50  0001 C CNN
F 3 "~" H 5750 3150 50  0001 C CNN
	1    5750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF6769A
P 5750 3300
AR Path="/5DF6769A" Ref="#PWR?"  Part="1" 
AR Path="/5DF66CB5/5DF6769A" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5750 3050 50  0001 C CNN
F 1 "GND" H 5755 3127 50  0000 C CNN
F 2 "" H 5750 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF676A0
P 5600 2600
AR Path="/5DF676A0" Ref="#PWR?"  Part="1" 
AR Path="/5DF66CB5/5DF676A0" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5600 2450 50  0001 C CNN
F 1 "+5V" H 5615 2773 50  0000 C CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3000 5400 2650
Wire Wire Line
	5400 2650 5600 2650
Wire Wire Line
	5750 2650 5750 2700
Wire Wire Line
	5600 2600 5600 2650
Connection ~ 5600 2650
Wire Wire Line
	5600 2650 5750 2650
Wire Notes Line
	5050 2350 6100 2350
Wire Notes Line
	6100 2350 6100 3550
Wire Notes Line
	6100 3550 5050 3550
Wire Notes Line
	5050 2350 5050 3550
Wire Wire Line
	5400 3400 5400 3800
Wire Wire Line
	5400 3800 4700 3800
Wire Wire Line
	4700 3500 4700 3800
Wire Notes Line
	4650 3250 4850 3250
Wire Notes Line
	4850 3250 4850 3550
Wire Notes Line
	4850 3550 4650 3550
Wire Notes Line
	4650 3550 4650 3250
$Comp
L Device:R_POT RV?
U 1 1 5DF676B8
P 5400 4000
AR Path="/5DF676B8" Ref="RV?"  Part="1" 
AR Path="/5DF66CB5/5DF676B8" Ref="RV2"  Part="1" 
F 0 "RV2" V 5400 4075 50  0000 R CNN
F 1 "10k" H 5350 4000 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YL" H 5400 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5400 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 4000 5250 4200
Wire Wire Line
	5250 4200 5400 4200
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 5DF676C8
P 6650 3900
AR Path="/5DF676C8" Ref="U?"  Part="3" 
AR Path="/5DF66CB5/5DF676C8" Ref="U3"  Part="3" 
F 0 "U3" H 6608 3946 50  0001 L CNN
F 1 "LM358" H 6608 3855 50  0001 L CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 6650 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6650 3900 50  0001 C CNN
	3    6650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4200 6050 4200
Connection ~ 6050 4200
Wire Wire Line
	6350 3800 5400 3800
Wire Wire Line
	6050 3600 6550 3600
Wire Wire Line
	6050 3600 6050 3850
Connection ~ 6550 3600
Text Notes 6000 2450 0    50   ~ 0
IR
Text Notes 4750 3350 0    50   ~ 0
IR
Connection ~ 5400 3800
Connection ~ 5400 4200
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5DF676D8
P 4500 3800
AR Path="/5DF676D8" Ref="J?"  Part="1" 
AR Path="/5DF66CB5/5DF676D8" Ref="J7"  Part="1" 
F 0 "J7" H 4450 3900 50  0000 L CNN
F 1 "IR_DET" H 4350 3700 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4500 3800 50  0001 C CNN
F 3 "~" H 4500 3800 50  0001 C CNN
	1    4500 3800
	-1   0    0    1   
$EndComp
Connection ~ 4700 3800
Text HLabel 6950 3900 2    50   Input ~ 0
Interrupt
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 5DF9373F
P 5500 3200
AR Path="/5DF9373F" Ref="Q?"  Part="1" 
AR Path="/5DF66CB5/5DF9373F" Ref="Q26"  Part="1" 
F 0 "Q26" H 5800 3100 50  0000 R CNN
F 1 "Q_Photo" H 5925 3350 50  0000 R CNN
F 2 "" H 5700 3300 50  0001 C CNN
F 3 "~" H 5500 3200 50  0001 C CNN
	1    5500 3200
	-1   0    0    -1  
$EndComp
$EndSCHEMATC

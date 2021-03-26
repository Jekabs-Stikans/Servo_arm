/*
 * definitions.asm
 *   Author: Jekabs Stikans
 */ 

 .def TMP = r16
 .def MASK = r17
 .def M3_PWM = r18				// Signals when to run the servo motor's PWM pulse
 .def S_PORTC = r19				// Stores output port values for use in port PWM
 .def S_PORTD = r20
 .def M3_Angle = r21
 .def TEST = r22
 .def US_PWM = r23
 
 .equ Motor_Data = 0x0100		// Points to the storage of current status of all stepper motors
								// First 3B stores states, next 3B stores positions

 .equ CMP_value_1000ms = 0x3D09
 .equ CMP_value_500ms = 0x1E84
 .equ CMP_value_100ms = 0x061A
 .equ CMP_value_50ms = 0x030D
 .equ CMP_value_20ms = 0x0139
 .equ CMP_value_15ms = 0xEA
 .equ CMP_value_10ms = 0x9C
 .equ CMP_value_8ms = 0x7B
 .equ CMP_value_5ms = 0x4E
 .equ CMP_value_2ms = 0x1F
 .equ CMP_value_1ms = 0x10

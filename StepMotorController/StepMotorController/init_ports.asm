/*
 * init_ports.asm
 *   Author: Jekabs Stikans
 */ 

 CLR TMP
 OUT DDRB, TMP			// Port B setup: PB0 = SW4, PB1 = SW3 (Switches);	PB2 = SW1, PB3 = SW2 (Push buttons);	PB4 = IR_Interrupt;		PB5 = Ultrasonic response		PB7 = System Reset (On board push button)

 SER TMP
 OUT DDRC, TMP			// Port C setup: PC0 = Ultrasonic PWM;		PC1 to PC4 = Base motor(0) control;		PC5 = Servo Motor(3) control
 OUT DDRD, TMP			// Port D setup: PD0 to PD3 = Elbow motor(2) control;	PD4 to PD7 = Shoulder motor(1) control

 LDI TMP, 0b00001010	// Stepper motor port C initial state
 OUT PORTC, TMP

 LDI TMP, 0b01010101	// Stepper motor port D initial state
 OUT PORTD, TMP
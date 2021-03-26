/*
 * ISR.asm
 *   Author: Jekabs Stikans
 */ 


 ISR_INT0:					
	NOP
	RETI

ISR_INT1:					
	NOP
	RETI

ISR_PCI0:
	NOP
	RETI

ISR_PCI1:
	NOP
	RETI

ISR_PCI2:
	NOP
	RETI

ISR_WDT:	
	NOP
	RETI

ISR_OC0A:
	NOP
	RETI
	
ISR_OC0B:
	NOP
	RETI
	
ISR_OVF0:
	NOP
	RETI

ISR_ICP1:
	NOP
	RETI
	
ISR_OC1A:	
	/* --- Servo motor PWM control pulse start --- */
	LDI M3_PWM, 0x01
	//LDI US_PWM, 0x01	
	
	/* --- Motor control --- */
	
	IN TMP, PINB
	ANDI TMP, 0x03
	
	/* --- Select which motor to move --- */
	CPI TMP, 0x03
	BREQ M3
	LDI ZH, high (Motor_Data)
	LDI ZL, low (Motor_Data)
	ADD ZL, TMP

	/* --- Detect direction --- */
	SUBI ZL, -3			// Jumps to the selected motor's position storage
	LD TMP, Z
	SBIC PINB, PINB2
	RJMP StepM_Forward
	SBIC PINB, PINB3
	RJMP StepM_Backward
	Exit_StepM:
	RETI

		StepM_Forward:
			/* --- Check if top angle limit is reached --- */
			CPI TMP, 224	// (224/256)*360 = 315 degrees
			BREQ Exit_StepM	
			INC TMP
			ST Z, TMP

			/* --- State register bit rotation to right --- */
			SUBI ZL, 3		// Returns to the corresponding motor's state storage
			LD TMP, Z
			SBRC TMP, 1
			SBR TMP, 0x20
			SBRS TMP, 1
			CBR TMP, 0x20
			LSR TMP
			ST Z, TMP
			RETI


		StepM_Backward:
			/* --- Check if bottom angle limit is reached --- */
			CPI TMP, 32		// (32/256)*360 = 45 degrees
			BREQ Exit_StepM	
			DEC TMP
			ST Z, TMP

			/* --- State register bit rotation to left --- */
			SUBI ZL, 3
			LD TMP, Z
			SBRC TMP, 4
			SBR TMP, 0x01
			SBRS TMP, 4
			CBR TMP, 0x01
			LSL TMP
			ST Z, TMP
			RETI

		M3:
			/* --- Detect direction --- */
			SBIC PINB, PINB2
			RJMP M3_Forward
			SBIC PINB, PINB3
			RJMP M3_Backward
			Exit_M3:
			RETI

				M3_Forward:
					CPI M3_Angle, 0xA5		// Forward angle limit
					BREQ Exit_M3
					INC M3_Angle
					RETI

				M3_Backward:
					CPI M3_Angle, 0x20		// Backward angle limit
					BREQ Exit_M3
					DEC M3_Angle
					RETI

ISR_OC1B:
	NOP
	RETI

ISR_OVF1:
	NOP
	RETI

ISR_OC2A:	// End stepper motor duty cycle
	
	IN TMP, PINC
	ANDI TMP, 0b11100001	// Ensure that other port C outputs aren't modified
	OUT PORTC, TMP
	CLR TMP
	OUT PORTD, TMP
	RETI

ISR_OC2B:	// Ultrasonic distancer pulse modulation
	INC US_PWM
	SBIC PINC, PINC0
	RJMP US_off
	SBIS PINC, PINC0
	RJMP US_on

	US_off:
	CBI PORTC, PORTC0
	RJMP US_Cont
	US_on:
	SBI PORTC, PORTC0
	RJMP US_Cont

	US_Cont:
	SBRS US_PWM, 3
	RETI
	CLR US_PWM
	LDI TMP, 0x03		// Disable TC2 interrupt B
	STS TIMSK2, TMP
	RETI
	
	
ISR_OVF2:	// Begin duty cycle
	LDI ZH, high (Motor_Data)
	LDI ZL, low (Motor_Data)

	/* --- Motor 0 port update --- */
	LD TMP, Z+
	LDI S_PORTC, 0b00001010

	LDI MASK, 0b00000110
	SBRC TMP, 3
	EOR S_PORTC, MASK
	LDI MASK, 0b00011000
	SBRC TMP, 2
	EOR S_PORTC, MASK
	
	/* --- Motor 1 port update --- */
	LD TMP, Z+
	LDI S_PORTD, 0b01010101

	LDI MASK,0b00110000
	SBRS TMP, 3
	EOR S_PORTD, MASK
	LDI MASK,0b11000000
	SBRS TMP, 2
	EOR S_PORTD, MASK

	/* --- Motor 2 port update --- */
	LD TMP, Z

	LDI MASK, 0b00000011 
	SBRC TMP, 3
	EOR S_PORTD, MASK
	LDI MASK, 0b00001100 
	SBRC TMP, 2
	EOR S_PORTD, MASK

	/* --- Start of duty cycle for stepper motor control ports --- */
	IN TMP, PINC
	ANDI TMP, 0b11100001	// Ensure that other Port C outputs aren't modified
	OR  S_PORTC, TMP
	OUT PORTC, S_PORTC
	OUT PORTD, S_PORTD

	/* --- Ultrasonic PWM handler --- */
	SBRS US_PWM, 0		// Check for start signal
	RJMP End_US_PWM
	INC US_PWM
	SBI PORTC, PORTC0
	LDI TMP, 0x07		// Enable TC2 interrupt B
	STS TIMSK2, TMP
	End_US_PWM:

	/* --- Servo motor PWM handler --- */
	CPI M3_PWM, 0		// Check for start signal
	BREQ Exit_Sevo_PWM
	INC M3_PWM
	SBI PORTC, PORTC5
	CP M3_PWM, M3_Angle
	BRLO Exit_Sevo_PWM
	CLR M3_PWM
	CBI PORTC, PORTC5
	Exit_Sevo_PWM:
	RETI
		
ISR_SPI:
	NOP
	RETI
		
ISR_URXC:
	NOP
	RETI
		
ISR_UDRE:
	NOP
	RETI
	 	
ISR_UTXC:
	NOP
	RETI

ISR_ADCC:
	NOP
	RETI
	 	
ISR_ERDY:
	NOP
	RETI
		
ISR_ACI:
	NOP
	RETI
		
ISR_TWI:
	NOP
	RETI

ISR_SPMR:
	NOP
	RETI
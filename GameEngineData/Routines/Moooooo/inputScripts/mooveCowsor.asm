;; Get current Y_position of cursor	
		LDX #1
		LDA Object_y_hi, x


;; Toggle position between #$60 and #$78
		CMP #$60
		BEQ +
			LDA #$48
		+
		CLC
		ADC #$18
		STA Object_y_hi, x


;; Return
	RTS

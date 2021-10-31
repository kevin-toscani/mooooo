;; Get current Y_position of cursor	
		LDX #1
		LDA Object_y_hi, x


;; Toggle position between #$60 and #$78
		CMP #$90
		BNE +
			LDA #$50
		+
		CLC
		ADC #$10
		STA Object_y_hi, x


;; Return
	RTS

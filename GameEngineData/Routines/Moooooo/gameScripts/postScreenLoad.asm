;; Preset prevMove to 255 before every level
	LDA #$FF
	STA	prevMove

;; If level 255, hide player
	LDA levelNumber
	CMP #$FF
	BEQ	+
	;; Reset player animation
		ChangeActionStep player1_object, #$00
		JMP +doNotHide
	+
	
	ChangeActionStep player1_object, #$06
+doNotHide:
	

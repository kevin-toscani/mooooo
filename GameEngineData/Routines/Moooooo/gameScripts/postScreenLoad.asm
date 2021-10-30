;; Preset prevMove to 255 before every level
	LDA #$FF
	STA	prevMove
	
;; Remoove bridge before every level
	LDA #$00
	STA hasBridge

;; If level 255, hide player and place cowsor
	LDA levelNumber
	CMP #$FF
	BEQ	+
		;; Reset player animation
		ChangeActionStep player1_object, #$00
		JMP +enableInput
	+
	
	ChangeActionStep player1_object, #$06

;; Tell the game to allow input from here on
+enableInput:
	LDA #$01
	STA allowInput

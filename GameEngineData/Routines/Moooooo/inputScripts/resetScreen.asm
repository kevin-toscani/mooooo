;; ActionStep 5 = do nothing
	GetActionStep player1_object
	CMP #$05
	BNE +
		RTS
	+

;; Tell the game to not allow any inputs right now
	LDA #$00
	STA allowInput

;; Reset the screen
	LDA #$01
	STA screenTransitionType ;; is of warp type
	
	LDA gameHandler
	ORA #%10000000
	STA gameHandler ;; this will set the next game loop to update the screen.
	RTS
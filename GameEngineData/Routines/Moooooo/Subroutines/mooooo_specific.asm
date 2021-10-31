;; subroutine: finalize warp the MOOOOO! way.
;; This snippet gets fired all over the place,
;; why not consolidate it in a subroutine then?

finalizeWarpTheMooWay:
	LDX player1_object
	STA Object_screen,x
	STA camScreen
	LDA #$00
	STA camX_lo
	STA camX
	
	LDA #1
	STA screenTransitionType
	
	LDA updateScreenData
	AND #%11111011
	STA updateScreenData
	LDA scrollByte
	AND #%11111110
	STA scrollByte
	LDA #$00
	STA scrollOffsetCounter
	
	LDA gameHandler
	ORA #%10000000
	STA gameHandler

	RTS





;; subroutine: Mooooove!
;; All directional buttons basically did the same thing
;; but with different variables, so I figured I might
;; as well turn it into a subroutine to shave a few
;; bytes off the static bank.

Mooooove:
;; Input not allowed = do nothing
	LDA allowInput
	BNE +
		RTS
	+

;; More than one button pressed = do nothing
	LDA gamepad
	CMP directionPressed
	BEQ +
		RTS
	+	

;; ActionStep 5 = do nothing
	GetActionStep player1_object
	CMP #$05
	BNE +
		RTS
	+

;; Check if it's winter
	LDA ScreenFlags00
	AND #%00100000
	BEQ +
		JMP +itsWinter
	+

;; preset new player Y position
	LDA directionPressed

	;; up
	CMP #%00010000
	BNE +
		LDA Object_y_hi,x
		SEC
		SBC #$10
		JMP ++
	+
	
	;; down
	CMP #%00100000
	BNE +
		LDA Object_y_hi,x
		CLC
		ADC #$10
		JMP ++
	+

	LDA Object_y_hi,x
	++
	STA tempy


;; preset new player Y position	
	LDA directionPressed

	;; left
	CMP #%01000000
	BNE +
		LDA Object_x_hi,x
		SEC
		SBC #$10
		JMP ++
	+
	
	;; right
	CMP #%10000000
	BNE +
		LDA Object_x_hi,x
		CLC
		ADC #$10
		JMP ++
	+

	LDA Object_x_hi,x
	++
	STA tempx

;; convert (x,y) coordinates of player
;; to position in collision table
	LSR A
	LSR A
	LSR A
	LSR A
	CLC
	ADC tempy

;; get the correct collision table
	TAY
	LDA camScreen
	AND #%00000001
	BNE +isOddScreen
		LDA collisionTable,y
		JMP +goOnPlz

+isOddScreen:
	LDA collisionTable2,y

;; check if tile is walkable (equal to zero)
+goOnPlz:
	BEQ +
		JMP +doWrong
	+
	
;; update tile on previous place
	LDA directionPressed
	
	;; up
	CMP #%00010000
	BNE +
		LDA #0
		STA curMove
		LDA #FACE_UP
		STA faceDirection
		TYA
		CLC
		ADC #$10
		JMP ++
	+
	
	;; down
	CMP #%00100000
	BNE +
		LDA #1
		STA curMove
		LDA #FACE_DOWN
		STA faceDirection
		TYA
		SEC
		SBC #$10
		JMP ++
	+

	;; left
	CMP #%01000000
	BNE +
		LDA #2
		STA curMove
		LDA #FACE_LEFT
		STA faceDirection
		TYA
		CLC
		ADC #$1
		JMP ++
	+
	
	;; it must be right
	LDA #3
	STA curMove
	LDA #FACE_RIGHT
	STA faceDirection
	TYA
	SEC
	SBC #$1

	++
	STA temp1


;; Change metatile and collision type
    LDA prevMove
	CMP #$FF
	BNE +
		JMP +CowTail
	+
	
    ASL A
    ASL A
    CLC
    ADC curMove
	ASL A
	ADC #$20
	CMP #$30
	BCC +
		CLC
		ADC #$10
	+
	JMP +CowBody

+CowTail:
	LDA curMove
	ASL
	CLC
	ADC #$08

+CowBody:
	STA tempA

	
;; Draw the correct part of the cow on screen and set it to solid (#1)
	LDA camScreen
	AND #%00000001
	STA temp2
	ChangeTileAtCollision tempA, #1

;; Move the player to the new position on screen
	UpdatePosition player1_object, tempx, tempy

;; update prevMove
    LDA curMove
    STA prevMove


;; Check if player has won
	LDA #$DB
	LDA chompsLeft
	SEC
	SBC #1
	BNE +
		JMP +doWinner
	+
	STA chompsLeft
	JMP +doWalk


+doWinner:
    ;; Play sound sfx_winner
	PlaySound #sfx_moo

    ;; and set player action step to 5
	ChangeActionStep player1_object, #$05
	AddValue #$03, myScore, #$01, #$00

	;; Tell that state to warp to the next screen
	;; (by design of action step 5)
	RTS


;; Play walking sound
+doWalk:
    PlaySound #sfx_chomp
	JMP +changeStepAndDirection


+itsWinter:
	LDA #$0
	STA allowInput
	
	LDA directionPressed
	CMP #%00010000 ;up
	BNE +
		LDA #FACE_UP
		STA faceDirection
		LDA #UP
		JMP ++
	+
	
	CMP #%00100000 ;down
	BNE +
		LDA #FACE_DOWN
		STA faceDirection
		LDA #DOWN
		JMP ++
	+

	CMP #%01000000 ;left
	BNE +
		LDA #FACE_LEFT
		STA faceDirection
		LDA #LEFT
		JMP ++
	+

	;right
	LDA #FACE_RIGHT
	STA faceDirection
	LDA #RIGHT
	++
	STA moveDirection

	StartMoving player1_object, moveDirection
	
	
;; Update player state
+changeStepAndDirection:
	ChangeActionStep player1_object, #$01
	ChangeFacingDirection player1_object, faceDirection
    RTS


;; If player can't move, play wrong sfx
+doWrong:
    PlaySound #sfx_wrong
    RTS

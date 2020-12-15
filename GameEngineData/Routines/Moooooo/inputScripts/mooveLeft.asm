;; ;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; INPUT SCRIPT: PRESS LEFT ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;; ;;

MOOVE_LEFT = #2

;; ActionStep 5 = do nothing
	GetActionStep player1_object
	CMP #$05
	BNE +
		RTS
	+

;; preset new player position
	LDA Object_y_hi,x
	STA tempy
	
    LDA Object_x_hi,x ;; assuming player_1 is in x
    SEC
    SBC #$10
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
	TYA
	CLC
	ADC #$1
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
    ADC #MOOVE_LEFT
	ASL A
	ADC #$20
	CMP #$30
	BCC +
		CLC
		ADC #$10
	+
	JMP +CowBody

+CowTail:
	LDA #MOOVE_LEFT
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
    LDA #MOOVE_LEFT
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
	; StopSound
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


;; Update player state
	ChangeActionStep player1_object, #$01
	ChangeFacingDirection player1_object, #FACE_LEFT
    JMP +doneMoving


;; If player can't move, play wrong sfx
+doWrong:
    PlaySound #sfx_wrong


;; We're done here
+doneMoving:
    RTS
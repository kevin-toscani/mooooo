;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  Press A, build a bridge
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Input not allowed = do nothing
	LDA allowInput
	BNE +
		RTS
	+

;; More than only down pressed = do nothing
	LDA gamepad
	CMP #%00000001
	BEQ +
		RTS
	+	

;; ActionStep 5 = do nothing
	GetActionStep player1_object
	CMP #$05
	BNE +
		RTS
	+

;; Check if Cow has a bridge
	LDA hasBridge
	BNE +
		RTS
	+

;; Cow has a bridge. Awesome!
;; Now, check if Cow has a solid space in front of him.
	LDA Object_y_hi,x
	STA tempy

    LDA Object_x_hi,x ;; assuming player_1 is in x
	STA tempx

;; First, we need to know which way Cow is facing.
	LDA Object_direction,x
	AND #%00000111
	BEQ +cowIsFacingDown

	CMP #$04
	BEQ +cowIsFacingUp

	CMP #$02
	BEQ +cowIsFacingRight

	;; Cow is facing left
	+cowIsFacingLeft:
		LDA tempx
		SEC
		SBC #$10
		STA tempx
		LDA #$82
		JMP +checkForSolidInSight
	
	;; Cow is facing down
	+cowIsFacingDown:
		LDA tempy
		CLC
		ADC #$10
		STA tempy
		LDA #$80
		JMP +checkForSolidInSight

	;; Cow is facing up
	+cowIsFacingUp:
		LDA tempy
		SEC
		SBC #$10
		STA tempy
		LDA #$80
		JMP +checkForSolidInSight
	
	;; Cow is facing right
	+cowIsFacingRight:
		LDA tempx
		CLC
		ADC #$10
		STA tempx
		LDA #$82


;; Does Cow have a solid in sight?
+checkForSolidInSight:
	STA tempA

	;; convert (x,y) coordinates of bridge position to position in collision table
	LDA tempx
	LSR A
	LSR A
	LSR A
	LSR A
	CLC
	ADC tempy
	TAY
	LDA camScreen
	AND #%00000001
	STA temp2
	BNE +
		LDA collisionTable,y
		JMP ++
	+
		LDA collisionTable2,y
	++
	
	;; Is it solid?
	BNE +
		;; Nope... skip it
		RTS
	+
	
;; Cow has a solid in his line of sight! So, let's build the bridge here,
;; which is tile number $20 or $22 (based if it's horizontal or vertical)
;; and collision type #0 (null / walkable)
	TYA
	STA temp1
	ChangeTileAtCollision tempA, #$00
	
;; Also, take away the bridge
	LDA #$00
	STA hasBridge
	
;; Also also, play the Build sound
	PlaySound #sfx_place

;; Return, because input scripts are subroutines
+doneBuilding:
	RTS
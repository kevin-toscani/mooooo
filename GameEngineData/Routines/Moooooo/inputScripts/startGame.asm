;;;;;;;;;;;;;;;;;;;;;
;;
;;  START GAME SCRIPT
;;


;; Set warp map to 0
	LDA #0
	STA warpMap

;; Ge the cowsor's Y-position
	LDX #1
	LDA Object_y_hi, x
	CMP #$60
	BEQ +
		LDA #0 ;; not story mode
		JMP ++
	+

	LDA #1 ;; yes story mode

	++
	STA storyMode
	CLC
	ADC #$E2 ;; screen E2 or E3 based on select or story
	STA currentNametable
	
	JSR finalizeWarpTheMooWay
	RTS
	
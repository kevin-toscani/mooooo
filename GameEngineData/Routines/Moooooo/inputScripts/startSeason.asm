;;;;;;;;;;;;;;;;;;;;;
;;
;;  START GAME SCRIPT
;;


;; Set warp map to 0
	LDA #0
	STA warpMap

;; Convert cowsor's Y-position to WarpOut screen
;;
;; Summer:  60 > 00
;; Fall:    70 > 30
;; Winter:  80 > 60
;; Spring:  90 > 90
;;


	;; The yPos value...
	LDX #1
	LDA Object_y_hi, x
	
	;; ...minus #$60...
	SEC
	SBC #$60
	
	;; ...times three...
	STA tempA
	ASL A
	CLC
	ADC tempA

	;; ...is the warpOut screen location.
	STA currentNametable
	
	JSR finalizeWarpTheMooWay
	RTS
	
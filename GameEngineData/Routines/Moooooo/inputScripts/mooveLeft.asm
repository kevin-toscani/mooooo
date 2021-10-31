;; ;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; INPUT SCRIPT: PRESS LEFT ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;; ;;

	LDA #%01000000
	STA directionPressed
	JSR Mooooove
	RTS

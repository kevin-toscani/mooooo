;; ;;;;;;;;;;;;;;;;;;;;;;;;; ;;
;; INPUT SCRIPT: PRESS RIGHT ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;; ;;

	LDA #%10000000
	STA directionPressed
	JSR Mooooove
	RTS

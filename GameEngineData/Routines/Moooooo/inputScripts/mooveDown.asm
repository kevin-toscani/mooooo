;; ;;;;;;;;;;;;;;;;;;;;;; ;;
;; INPUT SCRIPT: PRESS UP ;;
;; ;;;;;;;;;;;;;;;;;;;;;; ;;

	LDA #%00100000
	STA directionPressed
	JSR Mooooove
	RTS
	
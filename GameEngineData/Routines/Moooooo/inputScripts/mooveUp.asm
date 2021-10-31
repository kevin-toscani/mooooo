;; ;;;;;;;;;;;;;;;;;;;;;; ;;
;; INPUT SCRIPT: PRESS UP ;;
;; ;;;;;;;;;;;;;;;;;;;;;; ;;

	LDA #%00010000
	STA directionPressed
	JSR Mooooove
	RTS



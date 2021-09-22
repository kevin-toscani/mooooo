;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  pickup script, modified for Mooooo
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	LDA Object_type,x
	CMP #$06 ;; The bridge is object number 6
	BNE +
	
		;; When Cow picks up a bridge, set the bridge variable to 1
		LDA #$01
		STA hasBridge
		
		;; Play the pickup sound
		PlaySound #sfx_collect
		JMP +noMorePickups

+
	;; Other possible pickups (if any) can be handled here


+noMorePickups:
	;; object will already be destroyed, based on type

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
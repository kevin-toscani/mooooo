;; Warp out to screen
	LDA warpToScreen
	STA currentNametable

	JSR finalizeWarpTheMooWay

	RTS
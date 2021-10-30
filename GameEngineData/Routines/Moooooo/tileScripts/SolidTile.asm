;; Solid tile


;; Allow input upon touching a solid
	LDA #$01
	STA allowInput

;; makes solid
	LDA ObjectUpdateByte
	ORA #%00000001
	STA ObjectUpdateByte

	RTS
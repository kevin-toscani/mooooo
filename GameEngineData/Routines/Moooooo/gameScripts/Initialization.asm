;;initialization
;;; on a game to game basis, what data needs to be initialized will change.
	.include "ScreenData\init.ini"
	;;; this contains CONSTANTS information, like the starting screen and the game object palettes.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	
	LDA #$00
	STA soft2001
	JSR doWaitFrame
		;;; turn off rendering to load graphics.
		
	LDA #$FF
	STA songToPlay ;;; this will force "none" to play.
					;; which means that the first screen with a song that is not none
					;; will not be seen as the "Same songToPlay value", so it will play.
					;;; do this BEFORE screen loads.
		
	LDA #START_ON_SCREEN
	STA continueScreen
	STA currentNametable
	STA camScreen
	
	AND #%00001111
	STA camX_hi
	LDA #START_ON_SCREEN
	LSR
	LSR
	LSR
	LSR
	STA camY_hi
	
	; LDA #START_ON_SCREEN
	; AND #%00000001
	; BNE gameStartsInRightNametable
	; ;; game starts in left nametable
	; LDA #$20
	; STA updateNametable
	; LDA #$23
	; STA updateAttributeTable
	; JMP gotNameAndAttributeTableStart
; gameStartsInRightNametable:
	; LDA #$24
	; STA updateNametable
	; LDA #$27
	; STA updateAttributeTable
; gotNameAndAttributeTableStart:
	

	LDA #START_LEVEL ;; right now, this is set up backwards, where 0 is underground.
	EOR #%00000001
	STA warpMap


	;JSR doLoadScreen2 ;; loads the second screen to the second nametable.
	;JSR doLoadScreen
	LDA gameHandler
	ORA #%10000000
	STA gameHandler

	LDX #$00
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		CreateObject #START_POSITION_PIX_X, #START_POSITION_PIX_Y, #$00, #$00
		TXA
		STA player1_object	
		STA camObject
		LDA currentNametable
		STA Object_screen,x
		
		LDA #START_POSITION_PIX_X
		STA newX
		STA continueX
		LDA #START_POSITION_PIX_Y
		STA newY
		STA continueY
		

		
	;CreateObject #$A0, #$A0, #$10
	;TXA 
	;STA player2_object
	
	;LDA #%11110000
	
	;LDA #%00110000
	LDA #$00
	STA scrollTrigger
	;;;;; this sets up to ignore "screen edge" behavior
	;;;;; for scrolling games.
	;;Bit 7 = up
	;;Bit 6 = Down
	;;Bit 5 = left
	;;Bit 4 = right
	
	
	
	SwitchBank #$1B ;; switch to the music bank
					;; which contains the initializtion scripts.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; THIS SETS UP THE MUSIC ENGINE.
;;;; IF YOU USE A DIFFERENT MUSIC ENGINE
;;;; CHANGE THIS TO FIT YOUR NEEDS OF INITIALIZING YOUR MUSIC ENGINE.	
	lda #SOUND_REGION_NTSC ;or #SOUND_REGION_PAL, or #SOUND_REGION_DENDY
    sta sound_param_byte_0
    lda #<(song_list)
    sta sound_param_word_0
    lda #>(song_list)
    sta sound_param_word_0+1
    lda #<(sfx_list)
    sta sound_param_word_1
    lda #>(sfx_list)
    sta sound_param_word_1+1
    lda #<(instrument_list)
    sta sound_param_word_2
    lda #>(instrument_list)
    sta sound_param_word_2+1
    ;lda #<dpcm_list
    ;sta sound_param_word_3
    ;lda #>dpcm_list
    ;sta sound_param_word_3+1
    jsr sound_initialize


	ReturnBank


	
	;;;;;;;;;;;;;;DELETE ME
	.include "GameData\InitializationScripts\hudVarInits.asm"
	
	
	LDA #%00011110 ;;
	STA soft2001
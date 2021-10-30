song_mainTheme = 0
song_welcome = 1
song_winterTheme = 2
song_theEnd = 3
song_interstital = 4

sfx_moo = 0
sfx_wrong = 1
sfx_chomp = 2
sfx_collect = 3
sfx_place = 4

song_index_mainTheme = 0
song_index_welcome = 1
song_index_winterTheme = 2
song_index_theEnd = 3
song_index_interstital = 4

sfx_index_sfx_moo = 0
sfx_index_sfx_wrong = 1
sfx_index_sfx_chomp = 2
sfx_index_sfx_collect = 3
sfx_index_sfx_place = 4

song_list:
  .dw _mainTheme
  .dw _welcome
  .dw _winterTheme
  .dw _theEnd
  .dw _interstital

sfx_list:
  .dw _sfx_moo
  .dw _sfx_wrong
  .dw _sfx_chomp
  .dw _sfx_collect
  .dw _sfx_place

instrument_list:
  .dw _silence_0
  .dw _mooIn_1
  .dw _full_2
  .dw _mainLeadShort_3
  .dw _mainLeadFadeOut_4
  .dw _biteNoise_5
  .dw _tick_6
  .dw _banjoBack_7
  .dw _swipeUp_8
  .dw _mooOut_9
  .dw _mainLead_10
  .dw _mainLeadUp_11
  .dw _mainLeadDown_12
  .dw _mainLeadSoft_13
  .dw silent_14

_silence_0:
  .db 5,7,9,11,ARP_TYPE_ABSOLUTE
  .db 0,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mooIn_1:
  .db 5,16,36,42,ARP_TYPE_ABSOLUTE
  .db 6,7,7,8,8,8,9,9,9,10,ENV_STOP
  .db -6,-4,-6,-4,-6,-4,-4,-4,-4,-4,-4,-4,-2,-4,-2,-4,-2,-4,0,ENV_STOP
  .db 64,64,64,0,DUTY_ENV_LOOP,39
  .db ENV_STOP

_full_2:
  .db 5,7,9,11,ARP_TYPE_ABSOLUTE
  .db 11,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLeadShort_3:
  .db 5,18,20,22,ARP_TYPE_ABSOLUTE
  .db 11,8,8,8,8,6,5,4,3,2,1,0,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLeadFadeOut_4:
  .db 5,13,15,17,ARP_TYPE_ABSOLUTE
  .db 6,5,4,3,2,1,0,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_biteNoise_5:
  .db 5,16,19,21,ARP_TYPE_ABSOLUTE
  .db 7,9,9,9,9,7,7,3,1,0,ENV_STOP
  .db 1,ENV_LOOP,16
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_tick_6:
  .db 5,8,10,12,ARP_TYPE_ABSOLUTE
  .db 6,0,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_banjoBack_7:
  .db 5,19,21,23,ARP_TYPE_ABSOLUTE
  .db 5,5,5,5,5,5,4,4,3,3,2,1,0,ENV_STOP
  .db 0,ENV_STOP
  .db 192,DUTY_ENV_STOP
  .db ENV_STOP

_swipeUp_8:
  .db 5,9,12,14,ARP_TYPE_ABSOLUTE
  .db 6,6,5,ENV_STOP
  .db -1,ENV_LOOP,9
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mooOut_9:
  .db 5,16,20,22,ARP_TYPE_ABSOLUTE
  .db 9,8,7,6,5,4,3,2,1,0,ENV_STOP
  .db 6,4,ENV_LOOP,16
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLead_10:
  .db 5,8,10,12,ARP_TYPE_ABSOLUTE
  .db 11,8,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLeadUp_11:
  .db 5,8,17,19,ARP_TYPE_ABSOLUTE
  .db 11,8,ENV_STOP
  .db 24,-4,-4,-4,-4,-4,-4,0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLeadDown_12:
  .db 5,8,17,19,ARP_TYPE_ABSOLUTE
  .db 11,8,ENV_STOP
  .db -48,8,8,8,8,8,8,0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainLeadSoft_13:
  .db 5,8,10,12,ARP_TYPE_ABSOLUTE
  .db 4,3,ENV_STOP
  .db 0,ENV_STOP
  .db 128,DUTY_ENV_STOP
  .db ENV_STOP

silent_14:
  .db 5,7,9,11,ARP_TYPE_ABSOLUTE
  .db 0,ENV_STOP
  .db 0,ENV_STOP
  .db 0,DUTY_ENV_STOP
  .db ENV_STOP

_mainTheme:
  .db 0
  .db 8
  .db 170
  .db 6
  .dw _mainTheme_square1
  .dw _mainTheme_square2
  .dw _mainTheme_triangle
  .dw _mainTheme_noise
  .dw 0

_mainTheme_square1:
_mainTheme_square1_loop:
  .db CAL,<(_mainTheme_square1_8),>(_mainTheme_square1_8)
  .db CAL,<(_mainTheme_square1_0),>(_mainTheme_square1_0)
  .db CAL,<(_mainTheme_square1_1),>(_mainTheme_square1_1)
  .db CAL,<(_mainTheme_square1_2),>(_mainTheme_square1_2)
  .db CAL,<(_mainTheme_square1_3),>(_mainTheme_square1_3)
  .db CAL,<(_mainTheme_square1_4),>(_mainTheme_square1_4)
  .db CAL,<(_mainTheme_square1_5),>(_mainTheme_square1_5)
  .db CAL,<(_mainTheme_square1_6),>(_mainTheme_square1_6)
  .db CAL,<(_mainTheme_square1_7),>(_mainTheme_square1_7)
  .db GOT
  .dw _mainTheme_square1_loop

_mainTheme_square2:
_mainTheme_square2_loop:
  .db CAL,<(_mainTheme_square2_8),>(_mainTheme_square2_8)
  .db CAL,<(_mainTheme_square2_0),>(_mainTheme_square2_0)
  .db CAL,<(_mainTheme_square2_1),>(_mainTheme_square2_1)
  .db CAL,<(_mainTheme_square2_2),>(_mainTheme_square2_2)
  .db CAL,<(_mainTheme_square2_3),>(_mainTheme_square2_3)
  .db CAL,<(_mainTheme_square2_4),>(_mainTheme_square2_4)
  .db CAL,<(_mainTheme_square2_5),>(_mainTheme_square2_5)
  .db CAL,<(_mainTheme_square2_6),>(_mainTheme_square2_6)
  .db CAL,<(_mainTheme_square2_7),>(_mainTheme_square2_7)
  .db GOT
  .dw _mainTheme_square2_loop

_mainTheme_triangle:
_mainTheme_triangle_loop:
  .db CAL,<(_mainTheme_triangle_7),>(_mainTheme_triangle_7)
  .db CAL,<(_mainTheme_triangle_0),>(_mainTheme_triangle_0)
  .db CAL,<(_mainTheme_triangle_1),>(_mainTheme_triangle_1)
  .db CAL,<(_mainTheme_triangle_2),>(_mainTheme_triangle_2)
  .db CAL,<(_mainTheme_triangle_3),>(_mainTheme_triangle_3)
  .db CAL,<(_mainTheme_triangle_4),>(_mainTheme_triangle_4)
  .db CAL,<(_mainTheme_triangle_4),>(_mainTheme_triangle_4)
  .db CAL,<(_mainTheme_triangle_5),>(_mainTheme_triangle_5)
  .db CAL,<(_mainTheme_triangle_6),>(_mainTheme_triangle_6)
  .db GOT
  .dw _mainTheme_triangle_loop

_mainTheme_noise:
_mainTheme_noise_loop:
  .db CAL,<(_mainTheme_noise_2),>(_mainTheme_noise_2)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_1),>(_mainTheme_noise_1)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_0),>(_mainTheme_noise_0)
  .db CAL,<(_mainTheme_noise_1),>(_mainTheme_noise_1)
  .db GOT
  .dw _mainTheme_noise_loop

_mainTheme_square1_0:
  .db STI,3,SL2,C3,C3,C3,SL1,D3,SL2,E3,STI,11,SL3,G3,STI,4,SL2
  .db G3,STI,3,SL1,G2,G2,SL2,C3,C3,SL1,C3,SL2,C3,STI,12,SL3,G2
  .db STI,4,SL6,G2
  .db RET

_mainTheme_square1_1:
  .db STI,3,SL2,C3,C3,C3,SL1,D3,SL2,E3,STI,11,SL3,G3,STI,4,SL2
  .db G3,STI,3,SL1,G3,G2,SL2,D3,D3,SL1,D3,SL2,E3,STI,12,SL3,D3
  .db STI,4,SL6,D3
  .db RET

_mainTheme_square1_2:
  .db STI,3,SL2,C3,C3,C3,SL1,D3,SL2,E3,STI,11,SL3,G3,STI,4,SL2
  .db G3,STI,3,SL1,G3,G3,SL2,A3,A3,SL1,A3,SL2,B3,STI,11,SL3,C4
  .db STI,4,SL6,C4
  .db RET

_mainTheme_square1_3:
  .db STI,3,SL2,G3,G3,G3,SL1,G3,SL2,A3,STI,11,SL3,G3,STI,4,SL2
  .db G3,STI,3,SL1,G3,G2,SL2,D3,F3,SL1,E3,SL2,D3,STI,12,C3,STI,4
  .db SL1,C3,STI,3,SL2,G3,A3,G3
  .db RET

_mainTheme_square1_4:
  .db STI,3,SL2,B3,STI,11,SL3,B3,STI,4,SL1,B3,STI,3,B3,SL2,A3,STI,10
  .db G3,STI,4,SL1,G3,STI,3,SL2,A3,B3,C4,C4,SL1,C4,SL2,A3,STI,12
  .db G3,STI,4,SL1,G3,STI,3,SL2,G3,A3,G3
  .db RET

_mainTheme_square1_5:
  .db STI,3,SL2,B3,STI,11,SL3,B3,STI,4,SL1,B3,STI,3,B3,SL2,A3,STI,10
  .db G3,STI,4,SL3,G3,STI,3,SL1,A3,G3,SL2,C4,C4,SL1,C4,SL2,A3,STI,12
  .db G3,STI,4,SL5,G3,STI,3,SL1,G3,GS3
  .db RET

_mainTheme_square1_6:
  .db STI,3,SL2,A3,C4,C4,SL1,C4,SL2,D4,STI,10,C4,STI,4,SL1,C4,STI,3
  .db SL2,D4,DS4,E4,E4,SL1,E4,SL2,D4,STI,10,SL4,CS4,STI,4,SL2
  .db CS4,STI,3,SL1,A3,GS3,A3
  .db RET

_mainTheme_square1_7:
  .db STI,3,SL2,D4,D4,D4,SL1,C4,SL2,B3,STI,11,B3,STI,4,SL1,B3,STI,3
  .db SL2,C4,D4,C4,STI,11,SL1,G3,STI,4,G3,STI,11,FS3,STI,4,FS3
  .db STI,11,F3,STI,4,F3,STI,11,SL4,E3,STI,4,E3
  .db RET

_mainTheme_square1_8:
  .db STI,14,SLL,32,A0
  .db RET

_mainTheme_square2_0:
  .db STI,7,SL2,C2,SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2,C2
  .db SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2
  .db RET

_mainTheme_square2_1:
  .db STI,7,SL2,C2,SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2,B1
  .db SL1,D2,B1,SL2,G1,D2,B1,SL1,D2,B1,SL2,G1,D2
  .db RET

_mainTheme_square2_2:
  .db STI,7,SL2,C2,SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2,F2
  .db SL1,A2,F2,SL2,C2,A2,F2,SL1,A2,F2,SL2,C2,A2
  .db RET

_mainTheme_square2_3:
  .db STI,7,SL2,G2,SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2,D2,B2,G2
  .db G1,A1,B1,C2,C2,B1,A1
  .db RET

_mainTheme_square2_4:
  .db STI,7,SL2,G2,SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2,D2,B2,C2
  .db SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2
  .db RET

_mainTheme_square2_5:
  .db STI,7,SL2,G2,SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2,D2,B2,C2
  .db SL1,E2,C2,SL2,G1,E2,C2,C2,B1,AS1
  .db RET

_mainTheme_square2_6:
  .db STI,7,SL2,F2,SL1,A2,F2,SL2,C2,A2,F2,SL1,A2,F2,SL2,C2,A2,C2
  .db SL1,E2,C2,SL2,G1,GS1,A1,SL1,CS2,A1,SL2,E1,CS2
  .db RET

_mainTheme_square2_7:
  .db STI,7,SL2,D2,SL1,F2,D2,SL2,A1,F2,G2,SL1,B2,G2,SL2,D2,B2,C3
  .db G2,FS2,F2,SL8,E2
  .db RET

_mainTheme_square2_8:
  .db STI,7,SL2,C2,SL1,E2,C2,SL2,G1,E2,C2,SL1,E2,C2,SL2,G1,E2,C2
  .db SL1,E2,C2,SL2,G1,E2,C2,STI,8,SL6,AS1
  .db RET

_mainTheme_triangle_0:
  .db STI,2,SL2,C2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0
  .db E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,C2,STI,0,E2,STI,2,C2,STI,0,E2
  .db RET

_mainTheme_triangle_1:
  .db STI,2,SL2,C2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0
  .db E2,STI,2,G1,STI,0,E2,STI,2,G1,STI,0,D2,STI,2,D2,STI,0
  .db D2,STI,2,G1,STI,0,D2,STI,2,D2,STI,0,D2
  .db RET

_mainTheme_triangle_2:
  .db STI,2,SL2,C2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0
  .db E2,STI,2,G1,STI,0,E2,STI,2,F2,STI,0,D2,STI,2,C2,STI,0
  .db D2,STI,2,F2,STI,0,D2,STI,2,C2,STI,0,D2
  .db RET

_mainTheme_triangle_3:
  .db STI,2,SL2,G1,STI,0,E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0,SLE,D2
  .db RET

_mainTheme_triangle_4:
  .db STI,2,SL2,G1,STI,0,B1,STI,2,D2,STI,0,B1,STI,2,G1,STI,0
  .db B1,STI,2,D2,STI,0,B1,STI,2,C2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,C2,STI,0,E2,STI,2,G1,STI,0,E2
  .db RET

_mainTheme_triangle_5:
  .db STI,2,SL2,F2,STI,0,A2,STI,2,C2,STI,0,A2,STI,2,F2,STI,0
  .db A2,STI,2,C2,STI,0,A2,STI,2,C2,STI,0,E2,STI,2,G1,GS1,A1,STI,0
  .db CS2,STI,2,E2,STI,0,CS2
  .db RET

_mainTheme_triangle_6:
  .db STI,2,SL2,F1,STI,0,F2,STI,2,C2,STI,0,F2,STI,2,G1,STI,0
  .db B1,STI,2,D2,STI,0,B1,STI,2,C2,STI,3,G1,FS1,F1,SL4,E1,STI,0
  .db C2
  .db RET

_mainTheme_triangle_7:
  .db STI,2,SL2,C2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0
  .db E2,STI,2,G1,STI,0,E2,STI,2,C2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,SL1,C2,STI,0,C2,STI,8,SL6,AS1
  .db RET

_mainTheme_noise_0:
  .db STI,6,SL2,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2
  .db 0,9,0,SL1,9,5,SL2,0,9
  .db RET

_mainTheme_noise_1:
  .db STI,6,SL2,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9,SLA,0,SL2
  .db 9,9,9
  .db RET

_mainTheme_noise_2:
  .db STI,6,SL2,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2
  .db 0,9,0,STI,4,SL6,9
  .db RET

_welcome:
  .db 0
  .db 6
  .db 0
  .db 5
  .dw _welcome_square1
  .dw _welcome_square2
  .dw _welcome_triangle
  .dw _welcome_noise
  .dw 0

_welcome_square1:
  .db CAL,<(_welcome_square1_0),>(_welcome_square1_0)
  .db CAL,<(_welcome_square1_1),>(_welcome_square1_1)
  .db CAL,<(_welcome_square1_2),>(_welcome_square1_2)
  .db CAL,<(_welcome_square1_3),>(_welcome_square1_3)
  .db CAL,<(_welcome_square1_4),>(_welcome_square1_4)
_welcome_square1_loop:
  .db CAL,<(_welcome_square1_5),>(_welcome_square1_5)
  .db GOT
  .dw _welcome_square1_loop

_welcome_square2:
  .db CAL,<(_welcome_square2_0),>(_welcome_square2_0)
  .db CAL,<(_welcome_square2_1),>(_welcome_square2_1)
  .db CAL,<(_welcome_square2_2),>(_welcome_square2_2)
  .db CAL,<(_welcome_square2_3),>(_welcome_square2_3)
  .db CAL,<(_welcome_square2_4),>(_welcome_square2_4)
_welcome_square2_loop:
  .db CAL,<(_welcome_square2_5),>(_welcome_square2_5)
  .db GOT
  .dw _welcome_square2_loop

_welcome_triangle:
  .db CAL,<(_welcome_triangle_0),>(_welcome_triangle_0)
  .db CAL,<(_welcome_triangle_1),>(_welcome_triangle_1)
  .db CAL,<(_welcome_triangle_2),>(_welcome_triangle_2)
  .db CAL,<(_welcome_triangle_3),>(_welcome_triangle_3)
  .db CAL,<(_welcome_triangle_4),>(_welcome_triangle_4)
_welcome_triangle_loop:
  .db CAL,<(_welcome_triangle_5),>(_welcome_triangle_5)
  .db GOT
  .dw _welcome_triangle_loop

_welcome_noise:
  .db CAL,<(_welcome_noise_4),>(_welcome_noise_4)
  .db CAL,<(_welcome_noise_0),>(_welcome_noise_0)
  .db CAL,<(_welcome_noise_1),>(_welcome_noise_1)
  .db CAL,<(_welcome_noise_2),>(_welcome_noise_2)
  .db CAL,<(_welcome_noise_3),>(_welcome_noise_3)
_welcome_noise_loop:
  .db CAL,<(_welcome_noise_5),>(_welcome_noise_5)
  .db GOT
  .dw _welcome_noise_loop

_welcome_square1_0:
  .db STI,3,SL2,G3,SLA,E3,SL2,C4,SLL,21,G3,SL1,G3,SL2,A3,SL1,G3
  .db SL2,C4,SL3,C4,SL4,C4
  .db RET

_welcome_square1_1:
  .db STI,3,SL2,G3,SLA,E3,SL2,C4,SLD,A3,SL2,A3,SL3,A3,SL1,A3,SL2
  .db A3,SL1,GS3,SL3,A3,B3,SL2,A3,SL4,G3
  .db RET

_welcome_square1_2:
  .db STI,0,SL6,C3,STI,3,SL3,C4,SL2,A3,SL1,A3,SL3,G3,SL2,C3,SL3
  .db C3,SLC,C3,STI,1,SL7,E1,STI,9,SL5,F1,STI,0,SL3,C2,STI,3
  .db SL1,E3
  .db RET

_welcome_square1_3:
  .db STI,3,SL2,F3,SL1,E3,SL2,G3,SL3,G3,SL1,E3,SL2,G3,SL3,G3,SL1
  .db E3,SL2,G3,SL3,GS3,SLA,A3,SL2,G3,SL1,G3,SL2,C4,SL1,G3,SL2
  .db E3,SL1,D3,SL2,E3,SL3,G3,STI,11,SL4,E3
  .db RET

_welcome_square1_4:
  .db STI,10,SL3,E3,STI,4,SLL,45,E3
  .db RET

_welcome_square1_5:
  .db STI,0,SL0,E3
  .db RET

_welcome_square2_0:
  .db STI,7,SL2,E3,SL4,C3,STI,4,SL1,G2,A2,B2,SL3,C3,STI,7,SL2
  .db G3,SL4,E3,STI,4,SL1,G2,A2,B2,SL2,C3,SL1,C3,SL2,B2,SL1,AS2
  .db SL3,A2,SL2,F2,SL3,C2,STI,7,SL1,E3,SL2,F3,SL1,E3,SL2,A3,SL3
  .db A3,SL4,A3
  .db RET

_welcome_square2_1:
  .db STI,7,SL2,E3,SL4,C3,STI,4,SL1,G2,A2,B2,SL3,C3,STI,7,SL2
  .db G3,SL4,E3,STI,4,SL1,C2,D2,E2,SL6,A2,STI,7,SL2,F3,SL3,F3,SL1
  .db F3,SL2,F3,SL1,E3,SL3,F3,G3,SL2,D3,SL4,B2
  .db RET

_welcome_square2_2:
  .db STI,14,SL3,A0,STI,4,SLC,C3,SL2,E3,SL6,E3,SL1,DS3,SL3,E3,SL8
  .db F3,SL1,E3,SL3,F3,SL2,FS3,SL3,FS3,SL4,FS3
  .db RET

_welcome_square2_3:
  .db STI,14,SL3,A0,STI,4,SL2,E3,SL3,E3,SL1,C3,SL2,E3,SL3,E3,SL1
  .db C3,SL2,E3,SL3,E3,SLA,E3,SL2,D3,SL1,D3,SL2,G3,SL1,E3,SL2
  .db B2,SL1,G2,SL2,C3,SL3,C3,STI,11,SL4,C3
  .db RET

_welcome_square2_4:
  .db STI,10,SL3,C3,STI,4,SLL,45,C3
  .db RET

_welcome_square2_5:
  .db STI,0,SL0,C3
  .db RET

_welcome_triangle_0:
  .db STI,14,SL3,A0,STI,2,C3,E3,G3,E3,C3,E3,G3,AS3,A3,F3,C3,A2
  .db F3,C3,A2
  .db RET

_welcome_triangle_1:
  .db STI,2,SL3,F3,C3,E3,G3,E3,A2,C3,E3,C3,F3,A3,C4,A3,G3,D3,B2
  .db RET

_welcome_triangle_2:
  .db STI,2,SL3,G2,C3,STI,0,SL9,C3,STI,2,SL2,AS2,STI,0,SL1,B2,STI,2
  .db SL3,AS2,STI,0,SL6,B2,STI,2,SL3,A2,STI,0,SL9,A2,STI,2,SL2
  .db GS2,STI,0,SL1,GS2,STI,2,SL3,GS2,STI,0,GS2
  .db RET

_welcome_triangle_3:
  .db STI,14,SL3,A0,STI,2,C3,C4,B2,B3,AS2,AS3,A2,A3,D3,A3,G3,E3
  .db SL2,C3,STI,0,SL1,C3,STI,2,G2,A2,B2,SL2,C3,STI,0,SL1,C3
  .db RET

_welcome_triangle_4:
  .db STI,2,SL2,C2,STI,0,SLL,46,C2
  .db RET

_welcome_triangle_5:
  .db STI,0,SL0,C2
  .db RET

_welcome_noise_0:
  .db STI,6,SL2,9,SL1,9,STI,3,SL3,13,STI,6,9,3,9,3,9,3,SL2,9,SL1
  .db 9,SL3,3,9,3,9,3,9,SL2,3,SL1,9
  .db RET

_welcome_noise_1:
  .db STI,6,SL2,9,SL1,9,STI,3,SLC,9,STI,6,SL3,11,SL9,11,SLC,11
  .db SL3,11,SL5,11,SL1,9
  .db RET

_welcome_noise_2:
  .db STI,6,SL2,9,SL1,9,STI,3,SL3,13,STI,6,9,3,9,3,9,3,SL2,9,SL1
  .db 9,SL3,3,9,3,9,SL1,9,3,3,SL2,9,STI,3,SL4,11
  .db RET

_welcome_noise_3:
  .db STI,14,SLL,48,A0
  .db RET

_welcome_noise_4:
  .db STI,14,SL3,A0,STI,3,13,STI,6,9,3,9,3,9,3,SL2,9,SL1,9,SL3
  .db 3,9,3,9,3,9,SL2,3,SL1,9
  .db RET

_welcome_noise_5:
  .db STI,0,SL0,11
  .db RET

_winterTheme:
  .db 0
  .db 6
  .db 0
  .db 5
  .dw _winterTheme_square1
  .dw _winterTheme_square2
  .dw _winterTheme_triangle
  .dw _winterTheme_noise
  .dw 0

_winterTheme_square1:
_winterTheme_square1_loop:
  .db CAL,<(_winterTheme_square1_0),>(_winterTheme_square1_0)
  .db CAL,<(_winterTheme_square1_1),>(_winterTheme_square1_1)
  .db CAL,<(_winterTheme_square1_2),>(_winterTheme_square1_2)
  .db CAL,<(_winterTheme_square1_3),>(_winterTheme_square1_3)
  .db CAL,<(_winterTheme_square1_4),>(_winterTheme_square1_4)
  .db CAL,<(_winterTheme_square1_5),>(_winterTheme_square1_5)
  .db CAL,<(_winterTheme_square1_6),>(_winterTheme_square1_6)
  .db CAL,<(_winterTheme_square1_7),>(_winterTheme_square1_7)
  .db CAL,<(_winterTheme_square1_8),>(_winterTheme_square1_8)
  .db GOT
  .dw _winterTheme_square1_loop

_winterTheme_square2:
_winterTheme_square2_loop:
  .db CAL,<(_winterTheme_square2_0),>(_winterTheme_square2_0)
  .db CAL,<(_winterTheme_square2_1),>(_winterTheme_square2_1)
  .db CAL,<(_winterTheme_square2_2),>(_winterTheme_square2_2)
  .db CAL,<(_winterTheme_square2_3),>(_winterTheme_square2_3)
  .db CAL,<(_winterTheme_square2_4),>(_winterTheme_square2_4)
  .db CAL,<(_winterTheme_square2_5),>(_winterTheme_square2_5)
  .db CAL,<(_winterTheme_square2_5),>(_winterTheme_square2_5)
  .db CAL,<(_winterTheme_square2_6),>(_winterTheme_square2_6)
  .db CAL,<(_winterTheme_square2_7),>(_winterTheme_square2_7)
  .db GOT
  .dw _winterTheme_square2_loop

_winterTheme_triangle:
_winterTheme_triangle_loop:
  .db CAL,<(_winterTheme_triangle_0),>(_winterTheme_triangle_0)
  .db CAL,<(_winterTheme_triangle_0),>(_winterTheme_triangle_0)
  .db CAL,<(_winterTheme_triangle_1),>(_winterTheme_triangle_1)
  .db CAL,<(_winterTheme_triangle_2),>(_winterTheme_triangle_2)
  .db CAL,<(_winterTheme_triangle_3),>(_winterTheme_triangle_3)
  .db CAL,<(_winterTheme_triangle_4),>(_winterTheme_triangle_4)
  .db CAL,<(_winterTheme_triangle_4),>(_winterTheme_triangle_4)
  .db CAL,<(_winterTheme_triangle_5),>(_winterTheme_triangle_5)
  .db CAL,<(_winterTheme_triangle_6),>(_winterTheme_triangle_6)
  .db GOT
  .dw _winterTheme_triangle_loop

_winterTheme_noise:
_winterTheme_noise_loop:
  .db CAL,<(_winterTheme_noise_0),>(_winterTheme_noise_0)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_1),>(_winterTheme_noise_1)
  .db CAL,<(_winterTheme_noise_2),>(_winterTheme_noise_2)
  .db GOT
  .dw _winterTheme_noise_loop

_winterTheme_square1_0:
  .db STI,14,SLL,64,A0
  .db RET

_winterTheme_square1_1:
  .db STI,3,SL1,F5,STI,4,SL5,F5,STI,3,SL1,E5,STI,4,E5,STI,3
  .db F5,STI,4,F5,STI,3,G5,STI,4,SL3,G5,STI,3,SL1,A5,STI,4,SL3
  .db A5,STI,3,SL1,C6,STI,4,SL7,C6,STI,3,SL1,AS5,STI,4,AS5,STI,3
  .db A5,STI,4,A5,STI,3,G5,STI,4,G5,STI,3,F5,STI,4,SL5,F5,STI,3
  .db SL1,G5,STI,4,G5,STI,3,A5,STI,4,A5,STI,3,F5,STI,4,SL3,F5,STI,3
  .db SL1,C5,STI,4,SLL,17,C5
  .db RET

_winterTheme_square1_2:
  .db STI,3,SL1,F5,STI,4,SL5,F5,STI,3,SL1,E5,STI,4,E5,STI,3
  .db F5,STI,4,F5,STI,3,G5,STI,4,SL3,G5,STI,3,SL1,A5,STI,4,SL3
  .db A5,STI,3,SL1,C6,STI,4,SL7,C6,STI,3,SL1,C6,STI,4,C6,STI,3
  .db AS5,STI,4,AS5,STI,3,A5,STI,4,A5,STI,3,G5,STI,4,SL3,G5,STI,3
  .db SL1,F5,STI,4,SL3,F5,STI,3,SL1,G5,STI,4,G5,STI,3,A5,STI,4
  .db SL3,A5,STI,3,SL1,G5,STI,4,SLL,17,G5
  .db RET

_winterTheme_square1_3:
  .db STI,3,SL1,F5,STI,4,SL5,F5,STI,3,SL1,E5,STI,4,E5,STI,3
  .db F5,STI,4,F5,STI,3,G5,STI,4,SL3,G5,STI,3,SL1,A5,STI,4,SL3
  .db A5,STI,3,SL1,C6,STI,4,SL9,C6,STI,3,SL1,C6,STI,4,C6,STI,3
  .db C6,STI,4,C6,STI,3,D6,STI,4,SL3,D6,STI,3,SL1,D6,STI,4,SL3
  .db D6,STI,3,SL1,D6,STI,4,D6,STI,3,C6,STI,4,SL3,C6,STI,3,SL1
  .db AS5,STI,4,SLB,AS5,STI,3,SL1,CS6,STI,4,SL5,CS6
  .db RET

_winterTheme_square1_4:
  .db STI,3,SL1,C6,STI,4,SL5,C6,STI,3,SL1,C6,STI,4,C6,STI,3
  .db C6,STI,4,C6,STI,3,C6,STI,4,SL3,C6,STI,3,SL1,D6,STI,4,SL3
  .db D6,STI,3,SL1,C6,STI,4,SL7,C6,STI,3,SL1,A5,STI,4,SL3,A5,STI,3
  .db SL1,AS5,STI,4,AS5,STI,3,C6,STI,4,SL3,C6,STI,3,SL1,AS5,STI,4
  .db SL3,AS5,STI,3,SL1,A5,STI,4,A5,STI,3,G5,STI,4,SL3,G5,STI,3
  .db SL1,F5,STI,4,SLB,F5,STI,10,SL1,F5,STI,4,F5,STI,10,E5,STI,4
  .db E5,STI,10,D5,STI,4,D5
  .db RET

_winterTheme_square1_5:
  .db STI,10,SL1,E5,STI,4,E5,SL2,E5,STI,10,SL1,E5,STI,4,E5,SL2
  .db E5,STI,10,SL1,E5,STI,4,E5,STI,10,E5,STI,4,E5,SL2,E5,STI,10
  .db SL1,D5,STI,4,D5,SL2,D5,STI,10,SL1,C5,STI,4,C5,SL2,C5,C5,STI,10
  .db SL1,D5,STI,4,D5,SL2,D5,STI,10,SL1,E5,STI,4,E5,SL2,E5,STI,10
  .db SL1,F5,STI,4,F5,SL2,F5,STI,10,SL1,F5,STI,4,F5,SL2,F5,STI,10
  .db SL1,F5,STI,4,F5,STI,10,D5,STI,4,D5,SL2,D5,STI,10,SL1,C5,STI,4
  .db C5,SL2,C5,SLE,C5
  .db RET

_winterTheme_square1_6:
  .db STI,10,SL1,E5,STI,4,E5,SL2,E5,STI,10,SL1,E5,STI,4,E5,SL2
  .db E5,STI,10,SL1,E5,STI,4,E5,STI,10,E5,STI,4,E5,SL2,E5,STI,10
  .db SL1,D5,STI,4,D5,SL2,D5,STI,10,SL1,C5,STI,4,C5,SL2,C5,C5,STI,10
  .db SL1,D5,STI,4,D5,SL2,D5,STI,10,SL1,E5,STI,4,E5,SL2,E5,STI,10
  .db SL1,F5,STI,4,F5,SL2,F5,STI,10,SL1,F5,STI,4,F5,SL2,F5,STI,10
  .db SL1,F5,STI,4,F5,STI,10,D5,STI,4,D5,SL2,D5,STI,10,SL1,C5,STI,4
  .db C5,SL2,C5,SLA,C5,STI,10,SL1,C5,STI,4,C5,STI,10,CS5,STI,4
  .db CS5
  .db RET

_winterTheme_square1_7:
  .db STI,10,SL1,D5,STI,4,D5,SL2,D5,STI,10,SL1,F5,STI,4,F5,SL2
  .db F5,STI,10,SL1,F5,STI,4,F5,STI,10,F5,STI,4,F5,SL2,F5,STI,10
  .db SL1,G5,STI,4,G5,SL2,G5,STI,10,SL1,F5,STI,4,F5,SL2,F5,SL6
  .db F5,STI,10,SL1,D5,STI,4,D5,STI,10,CS5,STI,4,CS5,STI,10
  .db C5,STI,4,C5,SL2,C5,STI,10,SL1,C5,STI,4,C5,SL2,C5,STI,10
  .db SL1,C5,STI,4,C5,STI,10,CS5,STI,4,CS5,SL2,CS5,STI,10,SL1
  .db D5,STI,4,D5,SL2,D5,SL8,D5,STI,10,SL1,A4,STI,4,A4,STI,10
  .db GS4,STI,4,GS4,STI,10,A4,STI,4,A4
  .db RET

_winterTheme_square1_8:
  .db STI,10,SL1,C5,STI,4,C5,SL2,C5,C5,STI,10,SL1,AS4,STI,4
  .db AS4,SL2,AS4,AS4,STI,10,SL1,D4,STI,4,D4,SL2,D4,STI,10
  .db SL1,A4,STI,4,A4,SL2,A4,STI,10,SL1,A4,STI,4,A4,SL2,A4,STI,10
  .db SL1,A4,STI,4,A4,STI,10,G4,STI,4,G4,SL2,G4,STI,10,SL1,F4,STI,4
  .db F4,SL2,F4,SLL,30,F4
  .db RET

_winterTheme_square2_0:
  .db STI,14,SLL,64,A0
  .db RET

_winterTheme_square2_1:
  .db STI,14,SL2,A0,STI,4,F5,SL4,F5,SL2,E5,F5,SL4,G5,A5,SL2,C6
  .db SL6,C6,SL2,AS5,A5,G5,F5,SL4,F5,SL2,G5,A5,SL4,F5,SL2,C5,SLE
  .db C5
  .db RET

_winterTheme_square2_2:
  .db STI,14,SL2,A0,STI,4,F5,SL4,F5,SL2,E5,F5,SL4,G5,A5,SL2,C6
  .db SL6,C6,SL2,C6,AS5,A5,SL4,G5,F5,SL2,G5,SL4,A5,SL2,G5,SLE
  .db G5
  .db RET

_winterTheme_square2_3:
  .db STI,14,SL2,A0,STI,4,F5,SL4,F5,SL2,E5,F5,SL4,G5,A5,SL2,C6
  .db SLA,C6,SL2,C6,SL4,D6,D6,SL2,D6,SL4,C6,SL2,AS5,SLA,AS5,SL2
  .db CS6,CS6
  .db RET

_winterTheme_square2_4:
  .db STI,14,SL2,A0,STI,4,C6,SL8,C6,SL4,C6,D6,SL2,C6,SL6,C6,SL2
  .db A5,A5,AS5,SL4,C6,AS5,SL2,A5,SL4,G5,SL2,F5,SLA,F5,SL2,F5,E5
  .db RET

_winterTheme_square2_5:
  .db STI,13,SL1,AS5,G5,E5,C5,E5,C5,AS4,G4,AS4,G4,E4,C4,E4,C4,AS3
  .db G3,AS3,C4,E4,G4,E4,G4,AS4,C5,AS4,C5,E5,G5,E5,G5,AS5,C6,A5
  .db F5,C5,A4,C5,A4,F4,C4,F4,C4,A3,F3,A3,F3,C3,A2,C3,F3,A3,C4
  .db A3,C4,F4,A4,F4,A4,C5,F5,C5,F5,A5,C6
  .db RET

_winterTheme_square2_6:
  .db STI,13,SL1,AS5,F5,D5,AS4,D5,AS4,F4,D4,F4,D4,AS3,F3,AS3,F3
  .db D3,AS2,D3,F3,AS3,F3,AS3,D4,F4,D4,F4,AS4,D5,AS4,D5,F5,AS5
  .db F5,A5,F5,C5,A4,C5,A4,F4,C4,F4,C4,A3,F3,A3,F3,C3,A2,D3,FS3
  .db A3,FS3,A3,D4,FS4,D4,FS4,A4,D5,A4,D5,FS5,A5,FS5
  .db RET

_winterTheme_square2_7:
  .db STI,13,SL1,F5,D5,AS4,F4,AS4,F4,D4,AS3,D4,AS3,F3,D3,F3,D3
  .db AS2,F2,E2,G2,C3,E3,C3,E3,G3,C4,G3,C4,E4,G4,E4,G4,C5,E5,F5
  .db C5,A4,F4,A4,F4,C4,A3,F3,A3,C4,F4,C4,F4,A4,C5,STI,4,SL3,F5
  .db F5,F5,F5,SL4,F5
  .db RET

_winterTheme_triangle_0:
  .db STI,2,SL2,F3,A3,C4,E4,F4,E4,C4,A3,F3,A3,C4,E4,F4,E4,C4,A3
  .db F3,A3,C4,E4,F4,E4,C4,A3,F3,A3,C4,E4,F4,E4,C4,A3
  .db RET

_winterTheme_triangle_1:
  .db STI,2,SL2,F3,A3,C4,E4,F4,E4,C4,A3,F3,A3,C4,E4,F4,E4,C4,A3
  .db C3,E3,G3,AS3,C4,AS3,G3,E3,C3,E3,G3,AS3,C4,AS3,G3,E3
  .db RET

_winterTheme_triangle_2:
  .db STI,2,SL2,F3,A3,C4,E4,F4,E4,C4,A3,F3,A3,C4,E4,F4,E4,C4,A3
  .db D3,F3,AS3,C4,D4,C4,AS3,F3,D3,F3,AS3,C4,CS4,C4,AS3,F3
  .db RET

_winterTheme_triangle_3:
  .db STI,2,SL2,C3,E3,G3,AS3,C4,AS3,G3,E3,C3,E3,G3,AS3,C4,AS3
  .db G3,E3,C3,E3,G3,AS3,C4,AS3,G3,E3,F3,A3,C4,E4,SL4,F4,F3
  .db RET

_winterTheme_triangle_4:
  .db STI,2,SL2,C3,E3,G3,AS3,C4,AS3,G3,E3,C3,E3,G3,AS3,C4,AS3
  .db G3,E3,F3,A3,C4,E4,F4,E4,C4,A3,F3,A3,C4,E4,F4,E4,C4,A3
  .db RET

_winterTheme_triangle_5:
  .db STI,2,SL2,AS3,D4,F4,A4,AS4,A4,F4,D4,AS3,D4,F4,A4,AS4,A4,F4
  .db D4,F3,A3,C4,E4,F4,E4,C4,A3,FS3,A3,D4,FS4,A4,FS4,D4,A3
  .db RET

_winterTheme_triangle_6:
  .db STI,2,SL2,AS3,D4,F4,A4,AS4,A4,F4,D4,C4,E4,G4,AS4,C5,AS4
  .db G4,E4,C4,AS3,A3,G3,A3,G3,F3,E3,F3,A3,C4,E4,SL4,F4,STI,0
  .db F4
  .db RET

_winterTheme_noise_0:
  .db STI,14,SLL,60,A0,STI,8,SL4,0
  .db RET

_winterTheme_noise_1:
  .db STI,5,SL2,9,STI,4,SL4,2,SL2,1,SL6,7,SL4,2,SL2,1,SL4,1,SL3
  .db 9,STI,6,SL1,9,STI,9,SL2,12,STI,4,11,STI,5,9,STI,4,SL4,2,SL2
  .db 1,SL6,7,SL4,2,SL2,1,SL4,1,SL3,9,STI,6,SL1,9,STI,9,SL2,12
  .db STI,4,11
  .db RET

_winterTheme_noise_2:
  .db STI,5,SL2,9,STI,4,SL4,2,SL2,1,SL6,7,SL4,2,SL2,1,SL4,1,SL3
  .db 9,STI,6,SL1,9,STI,9,SL2,12,STI,4,11,STI,5,9,STI,4,SL4,2,SL2
  .db 1,SL3,7,STI,6,SL1,9,STI,9,SL2,12,STI,4,11,STI,10,12,STI,3
  .db SLE,12
  .db RET

_theEnd:
  .db 0
  .db 7
  .db 213
  .db 5
  .dw _theEnd_square1
  .dw _theEnd_square2
  .dw _theEnd_triangle
  .dw _theEnd_noise
  .dw 0

_theEnd_square1:
  .db CAL,<(_theEnd_square1_0),>(_theEnd_square1_0)
_theEnd_square1_loop:
  .db CAL,<(_theEnd_square1_1),>(_theEnd_square1_1)
  .db CAL,<(_theEnd_square1_1),>(_theEnd_square1_1)
  .db CAL,<(_theEnd_square1_1),>(_theEnd_square1_1)
  .db GOT
  .dw _theEnd_square1_loop

_theEnd_square2:
  .db CAL,<(_theEnd_square2_0),>(_theEnd_square2_0)
_theEnd_square2_loop:
  .db CAL,<(_theEnd_square2_1),>(_theEnd_square2_1)
  .db CAL,<(_theEnd_square2_1),>(_theEnd_square2_1)
  .db CAL,<(_theEnd_square2_1),>(_theEnd_square2_1)
  .db GOT
  .dw _theEnd_square2_loop

_theEnd_triangle:
  .db CAL,<(_theEnd_triangle_0),>(_theEnd_triangle_0)
_theEnd_triangle_loop:
  .db CAL,<(_theEnd_triangle_1),>(_theEnd_triangle_1)
  .db CAL,<(_theEnd_triangle_1),>(_theEnd_triangle_1)
  .db CAL,<(_theEnd_triangle_1),>(_theEnd_triangle_1)
  .db GOT
  .dw _theEnd_triangle_loop

_theEnd_noise:
  .db CAL,<(_theEnd_noise_0),>(_theEnd_noise_0)
_theEnd_noise_loop:
  .db CAL,<(_theEnd_noise_1),>(_theEnd_noise_1)
  .db CAL,<(_theEnd_noise_1),>(_theEnd_noise_1)
  .db CAL,<(_theEnd_noise_1),>(_theEnd_noise_1)
  .db GOT
  .dw _theEnd_noise_loop

_theEnd_square1_0:
  .db STI,3,SL2,G3,G3,G3,SL1,G3,SL2,A3,STI,11,SL3,G3,STI,4,SL4
  .db G3,STI,3,SL2,G2,G2,G2,SL1,G2,SL2,A2,STI,11,SL3,G2,STI,4
  .db SL4,G2,STI,3,SL2,G3,G3,G3,SL1,G3,SL2,A3,STI,11,SL3,G3,STI,4
  .db SL2,G3,STI,3,SL1,G2,G2,SL2,G3,GS3,SL1,A3,SL2,B3,STI,11
  .db SL3,C4,STI,4,SL2,C4,STI,10,SL3,C3,STI,4,SL1,C3
  .db RET

_theEnd_square1_1:
  .db STI,0,SL0,C3
  .db RET

_theEnd_square2_0:
  .db STI,7,SL2,G2,SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2,D2,B2,G2
  .db SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2,D2,B2,G2,SL1,B2,G2,SL2
  .db D2,B2,G2,SL1,B2,G2,SL2,D2,B2,G2,G1,A1,B1,SL4,C2,C1
  .db RET

_theEnd_square2_1:
  .db STI,0,SL0,C2
  .db RET

_theEnd_triangle_0:
  .db STI,2,SL2,G1,STI,0,E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,D2,STI,0
  .db E2,STI,2,G1,STI,0,E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0
  .db E2,STI,2,D2,STI,0,E2,STI,2,G1,STI,0,E2,STI,2,D2,STI,0
  .db E2,STI,2,G1,STI,0,SLE,D2
  .db RET

_theEnd_triangle_1:
  .db STI,0,SL0,D2
  .db RET

_theEnd_noise_0:
  .db STI,6,SL2,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2
  .db 0,9,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9,0,SL1,9,5,SL2,0,9
  .db SLC,0,STI,3,SL4,11
  .db RET

_theEnd_noise_1:
  .db STI,0,SL0,11
  .db RET

_interstital:
  .db 0
  .db 8
  .db 170
  .db 6
  .dw _interstital_square1
  .dw _interstital_square2
  .dw _interstital_triangle
  .dw _interstital_noise
  .dw 0

_interstital_square1:
_interstital_square1_loop:
  .db CAL,<(_interstital_square1_0),>(_interstital_square1_0)
  .db CAL,<(_interstital_square1_0),>(_interstital_square1_0)
  .db CAL,<(_interstital_square1_0),>(_interstital_square1_0)
  .db CAL,<(_interstital_square1_1),>(_interstital_square1_1)
  .db GOT
  .dw _interstital_square1_loop

_interstital_square2:
_interstital_square2_loop:
  .db CAL,<(_interstital_square2_0),>(_interstital_square2_0)
  .db CAL,<(_interstital_square2_0),>(_interstital_square2_0)
  .db CAL,<(_interstital_square2_0),>(_interstital_square2_0)
  .db CAL,<(_interstital_square2_0),>(_interstital_square2_0)
  .db GOT
  .dw _interstital_square2_loop

_interstital_triangle:
_interstital_triangle_loop:
  .db CAL,<(_interstital_triangle_0),>(_interstital_triangle_0)
  .db CAL,<(_interstital_triangle_0),>(_interstital_triangle_0)
  .db CAL,<(_interstital_triangle_0),>(_interstital_triangle_0)
  .db CAL,<(_interstital_triangle_0),>(_interstital_triangle_0)
  .db GOT
  .dw _interstital_triangle_loop

_interstital_noise:
_interstital_noise_loop:
  .db CAL,<(_interstital_noise_0),>(_interstital_noise_0)
  .db CAL,<(_interstital_noise_0),>(_interstital_noise_0)
  .db CAL,<(_interstital_noise_0),>(_interstital_noise_0)
  .db CAL,<(_interstital_noise_0),>(_interstital_noise_0)
  .db GOT
  .dw _interstital_noise_loop

_interstital_square1_0:
  .db STI,7,SL2,C2,SL1,E2,C2,SL2,G1,E2
  .db RET

_interstital_square1_1:
  .db STI,7,SL2,C2,G1,A1,B1
  .db RET

_interstital_square2_0:
  .db STI,0,SL8,C4
  .db RET

_interstital_triangle_0:
  .db STI,2,SL2,C2,STI,0,E2,STI,2,G1,STI,0,E2
  .db RET

_interstital_noise_0:
  .db STI,6,SL2,0,SL1,9,5,SL2,0,9
  .db RET

_sfx_moo:
  .db 0, 1
  .db 0, 1
  .dw 0
  .dw _sfx_moo_square2
  .dw 0
  .dw 0
  .dw 0

_sfx_moo_square2:
  .db CAL,<(_sfx_moo_square2_0),>(_sfx_moo_square2_0)
  .db TRM
_sfx_moo_square2_0:
  .db STI,1,SLL,56,E1,STI,9,SLL,40,F1,SLL,19,STI,0,C2
  .db RET

_sfx_wrong:
  .db 0, 1
  .db 0, 1
  .dw 0
  .dw _sfx_wrong_square2
  .dw _sfx_wrong_triangle
  .dw 0
  .dw 0

_sfx_wrong_square2:
  .db CAL,<(_sfx_wrong_square2_0),>(_sfx_wrong_square2_0)
  .db TRM
_sfx_wrong_triangle:
  .db CAL,<(_sfx_wrong_triangle_0),>(_sfx_wrong_triangle_0)
  .db TRM
_sfx_wrong_square2_0:
  .db STI,2,SLL,3,A1,STI,0,A1,STI,2,SLL,12,A1,SLL,1,STI,0,A1
  .db RET

_sfx_wrong_triangle_0:
  .db STI,2,SLL,3,A2,STI,0,A2,STI,2,SLL,12,A2,SLL,1,STI,0,A2
  .db RET

_sfx_chomp:
  .db 0, 1
  .db 0, 1
  .dw 0
  .dw 0
  .dw 0
  .dw _sfx_chomp_noise
  .dw 0

_sfx_chomp_noise:
  .db CAL,<(_sfx_chomp_noise_0),>(_sfx_chomp_noise_0)
  .db TRM
_sfx_chomp_noise_0:
  .db STI,5,SLL,12,15,STI,6,8,SLL,9,15,SLL,10,STI,0,12
  .db RET

_sfx_collect:
  .db 0, 1
  .db 0, 1
  .dw 0
  .dw _sfx_collect_square2
  .dw 0
  .dw 0
  .dw 0

_sfx_collect_square2:
  .db CAL,<(_sfx_collect_square2_0),>(_sfx_collect_square2_0)
  .db TRM
_sfx_collect_square2_0:
  .db STI,2,SLL,3,C3,E3,G3,AS3,STI,13,SLL,2,C4,SLL,1,STI,0,C4
  .db RET

_sfx_place:
  .db 0, 1
  .db 0, 1
  .dw 0
  .dw _sfx_place_square2
  .dw 0
  .dw 0
  .dw 0

_sfx_place_square2:
  .db CAL,<(_sfx_place_square2_0),>(_sfx_place_square2_0)
  .db TRM
_sfx_place_square2_0:
  .db STI,2,SLL,2,AS2,SLL,1,A2,STI,0,SLL,2,GS2,STI,2,SLL,1,G2,SLL,2
  .db FS2,STI,13,FS2,SLL,1,STI,0,E2
  .db RET


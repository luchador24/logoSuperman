
_CustomChara:

;signalSpecial.c,28 :: 		void CustomChara(char pos_row, char pos_char) {
;signalSpecial.c,30 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,31 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF       CustomChara_i_L0+0
L_CustomChara0:
	MOVF       CustomChara_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChara1
	MOVF       CustomChara_i_L0+0, 0
	ADDLW      _character+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChara_i_L0+0, 1
	GOTO       L_CustomChara0
L_CustomChara1:
;signalSpecial.c,32 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,33 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChara_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChara_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,34 :: 		}
L_end_CustomChara:
	RETURN
; end of _CustomChara

_CustomCharc:

;signalSpecial.c,38 :: 		void CustomCharc(char pos_row, char pos_char) {
;signalSpecial.c,40 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,41 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF       CustomCharc_i_L0+0
L_CustomCharc3:
	MOVF       CustomCharc_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomCharc4
	MOVF       CustomCharc_i_L0+0, 0
	ADDLW      _character2+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character2+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomCharc_i_L0+0, 1
	GOTO       L_CustomCharc3
L_CustomCharc4:
;signalSpecial.c,42 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,43 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomCharc_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomCharc_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,44 :: 		}
L_end_CustomCharc:
	RETURN
; end of _CustomCharc

_CustomChar111:

;signalSpecial.c,48 :: 		void CustomChar111(char pos_row, char pos_char) {
;signalSpecial.c,50 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,51 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character11[i]);
	CLRF       CustomChar111_i_L0+0
L_CustomChar1116:
	MOVF       CustomChar111_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar1117
	MOVF       CustomChar111_i_L0+0, 0
	ADDLW      _character11+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character11+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar111_i_L0+0, 1
	GOTO       L_CustomChar1116
L_CustomChar1117:
;signalSpecial.c,52 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,53 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChar111_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar111_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,54 :: 		}
L_end_CustomChar111:
	RETURN
; end of _CustomChar111

_CustomChar121:

;signalSpecial.c,58 :: 		void CustomChar121(char pos_row, char pos_char) {
;signalSpecial.c,60 :: 		Lcd_Cmd(72);
	MOVLW      72
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,61 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character12[i]);
	CLRF       CustomChar121_i_L0+0
L_CustomChar1219:
	MOVF       CustomChar121_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar12110
	MOVF       CustomChar121_i_L0+0, 0
	ADDLW      _character12+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character12+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar121_i_L0+0, 1
	GOTO       L_CustomChar1219
L_CustomChar12110:
;signalSpecial.c,62 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,63 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF       FARG_CustomChar121_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar121_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,64 :: 		}
L_end_CustomChar121:
	RETURN
; end of _CustomChar121

_CustomChar131:

;signalSpecial.c,68 :: 		void CustomChar131(char pos_row, char pos_char) {
;signalSpecial.c,70 :: 		Lcd_Cmd(80);
	MOVLW      80
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,71 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character13[i]);
	CLRF       CustomChar131_i_L0+0
L_CustomChar13112:
	MOVF       CustomChar131_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar13113
	MOVF       CustomChar131_i_L0+0, 0
	ADDLW      _character13+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character13+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar131_i_L0+0, 1
	GOTO       L_CustomChar13112
L_CustomChar13113:
;signalSpecial.c,72 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,73 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF       FARG_CustomChar131_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar131_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,74 :: 		}
L_end_CustomChar131:
	RETURN
; end of _CustomChar131

_CustomChar141:

;signalSpecial.c,78 :: 		void CustomChar141(char pos_row, char pos_char) {
;signalSpecial.c,80 :: 		Lcd_Cmd(88);
	MOVLW      88
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,81 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character14[i]);
	CLRF       CustomChar141_i_L0+0
L_CustomChar14115:
	MOVF       CustomChar141_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar14116
	MOVF       CustomChar141_i_L0+0, 0
	ADDLW      _character14+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character14+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar141_i_L0+0, 1
	GOTO       L_CustomChar14115
L_CustomChar14116:
;signalSpecial.c,82 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,83 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF       FARG_CustomChar141_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar141_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,84 :: 		}
L_end_CustomChar141:
	RETURN
; end of _CustomChar141

_CustomChar211:

;signalSpecial.c,88 :: 		void CustomChar211(char pos_row, char pos_char) {
;signalSpecial.c,90 :: 		Lcd_Cmd(96);
	MOVLW      96
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,91 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character21[i]);
	CLRF       CustomChar211_i_L0+0
L_CustomChar21118:
	MOVF       CustomChar211_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar21119
	MOVF       CustomChar211_i_L0+0, 0
	ADDLW      _character21+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character21+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar211_i_L0+0, 1
	GOTO       L_CustomChar21118
L_CustomChar21119:
;signalSpecial.c,92 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,93 :: 		Lcd_Chr(pos_row, pos_char, 4);
	MOVF       FARG_CustomChar211_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar211_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,94 :: 		}
L_end_CustomChar211:
	RETURN
; end of _CustomChar211

_CustomChar221:

;signalSpecial.c,98 :: 		void CustomChar221(char pos_row, char pos_char) {
;signalSpecial.c,100 :: 		Lcd_Cmd(104);
	MOVLW      104
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,101 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character22[i]);
	CLRF       CustomChar221_i_L0+0
L_CustomChar22121:
	MOVF       CustomChar221_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar22122
	MOVF       CustomChar221_i_L0+0, 0
	ADDLW      _character22+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character22+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar221_i_L0+0, 1
	GOTO       L_CustomChar22121
L_CustomChar22122:
;signalSpecial.c,102 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,103 :: 		Lcd_Chr(pos_row, pos_char, 5);
	MOVF       FARG_CustomChar221_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar221_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,104 :: 		}
L_end_CustomChar221:
	RETURN
; end of _CustomChar221

_CustomChar231:

;signalSpecial.c,108 :: 		void CustomChar231(char pos_row, char pos_char) {
;signalSpecial.c,110 :: 		Lcd_Cmd(112);
	MOVLW      112
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,111 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character23[i]);
	CLRF       CustomChar231_i_L0+0
L_CustomChar23124:
	MOVF       CustomChar231_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar23125
	MOVF       CustomChar231_i_L0+0, 0
	ADDLW      _character23+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character23+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar231_i_L0+0, 1
	GOTO       L_CustomChar23124
L_CustomChar23125:
;signalSpecial.c,112 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,113 :: 		Lcd_Chr(pos_row, pos_char, 6);
	MOVF       FARG_CustomChar231_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar231_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,114 :: 		}
L_end_CustomChar231:
	RETURN
; end of _CustomChar231

_CustomChar241:

;signalSpecial.c,118 :: 		void CustomChar241(char pos_row, char pos_char) {
;signalSpecial.c,120 :: 		Lcd_Cmd(120);
	MOVLW      120
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,121 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character24[i]);
	CLRF       CustomChar241_i_L0+0
L_CustomChar24127:
	MOVF       CustomChar241_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar24128
	MOVF       CustomChar241_i_L0+0, 0
	ADDLW      _character24+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character24+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar241_i_L0+0, 1
	GOTO       L_CustomChar24127
L_CustomChar24128:
;signalSpecial.c,122 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,123 :: 		Lcd_Chr(pos_row, pos_char, 7);
	MOVF       FARG_CustomChar241_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar241_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;signalSpecial.c,124 :: 		}
L_end_CustomChar241:
	RETURN
; end of _CustomChar241

_main:

;signalSpecial.c,133 :: 		void main() {
;signalSpecial.c,134 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;signalSpecial.c,135 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;signalSpecial.c,136 :: 		TRISB = 0;
	CLRF       TRISB+0
;signalSpecial.c,137 :: 		TRISD = 0;
	CLRF       TRISD+0
;signalSpecial.c,139 :: 		Lcd_Init(); //Inicializa la libreria lcd
	CALL       _Lcd_Init+0
;signalSpecial.c,162 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;signalSpecial.c,163 :: 		Lcd_Out(2,1, "BATMAN");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_signalSpecial+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;signalSpecial.c,164 :: 		CustomChar111(1,8);
	MOVLW      1
	MOVWF      FARG_CustomChar111_pos_row+0
	MOVLW      8
	MOVWF      FARG_CustomChar111_pos_char+0
	CALL       _CustomChar111+0
;signalSpecial.c,165 :: 		CustomChar121(1,9);
	MOVLW      1
	MOVWF      FARG_CustomChar121_pos_row+0
	MOVLW      9
	MOVWF      FARG_CustomChar121_pos_char+0
	CALL       _CustomChar121+0
;signalSpecial.c,166 :: 		CustomChar131(1,10);
	MOVLW      1
	MOVWF      FARG_CustomChar131_pos_row+0
	MOVLW      10
	MOVWF      FARG_CustomChar131_pos_char+0
	CALL       _CustomChar131+0
;signalSpecial.c,167 :: 		CustomChar141(1,11);
	MOVLW      1
	MOVWF      FARG_CustomChar141_pos_row+0
	MOVLW      11
	MOVWF      FARG_CustomChar141_pos_char+0
	CALL       _CustomChar141+0
;signalSpecial.c,168 :: 		CustomChar211(2,8);CustomChar221(2,9);CustomChar231(2,10);CustomChar241(2,11);
	MOVLW      2
	MOVWF      FARG_CustomChar211_pos_row+0
	MOVLW      8
	MOVWF      FARG_CustomChar211_pos_char+0
	CALL       _CustomChar211+0
	MOVLW      2
	MOVWF      FARG_CustomChar221_pos_row+0
	MOVLW      9
	MOVWF      FARG_CustomChar221_pos_char+0
	CALL       _CustomChar221+0
	MOVLW      2
	MOVWF      FARG_CustomChar231_pos_row+0
	MOVLW      10
	MOVWF      FARG_CustomChar231_pos_char+0
	CALL       _CustomChar231+0
	MOVLW      2
	MOVWF      FARG_CustomChar241_pos_row+0
	MOVLW      11
	MOVWF      FARG_CustomChar241_pos_char+0
	CALL       _CustomChar241+0
;signalSpecial.c,171 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

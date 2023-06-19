
_Supiz:

;Superman.c,3 :: 		void Supiz(char pos_row, char pos_char) {
;Superman.c,5 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,6 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman1[i]);
	CLRF       Supiz_i_L0+0
L_Supiz0:
	MOVF       Supiz_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Supiz1
	MOVF       Supiz_i_L0+0, 0
	ADDLW      _Superman1+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman1+0)
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
	INCF       Supiz_i_L0+0, 1
	GOTO       L_Supiz0
L_Supiz1:
;Superman.c,7 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,8 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_Supiz_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Supiz_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,9 :: 		}
L_end_Supiz:
	RETURN
; end of _Supiz

_Midsupiz:

;Superman.c,13 :: 		void Midsupiz(char pos_row, char pos_char) {
;Superman.c,15 :: 		Lcd_Cmd(72);
	MOVLW      72
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,16 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman2[i]);
	CLRF       Midsupiz_i_L0+0
L_Midsupiz3:
	MOVF       Midsupiz_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Midsupiz4
	MOVF       Midsupiz_i_L0+0, 0
	ADDLW      _Superman2+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman2+0)
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
	INCF       Midsupiz_i_L0+0, 1
	GOTO       L_Midsupiz3
L_Midsupiz4:
;Superman.c,17 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,18 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF       FARG_Midsupiz_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Midsupiz_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,19 :: 		}
L_end_Midsupiz:
	RETURN
; end of _Midsupiz

_Midsupder:

;Superman.c,24 :: 		void Midsupder(char pos_row, char pos_char) {
;Superman.c,26 :: 		Lcd_Cmd(80);
	MOVLW      80
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,27 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman3[i]);
	CLRF       Midsupder_i_L0+0
L_Midsupder6:
	MOVF       Midsupder_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Midsupder7
	MOVF       Midsupder_i_L0+0, 0
	ADDLW      _Superman3+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman3+0)
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
	INCF       Midsupder_i_L0+0, 1
	GOTO       L_Midsupder6
L_Midsupder7:
;Superman.c,28 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,29 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF       FARG_Midsupder_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Midsupder_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,30 :: 		}
L_end_Midsupder:
	RETURN
; end of _Midsupder

_Supder:

;Superman.c,34 :: 		void Supder(char pos_row, char pos_char) {
;Superman.c,36 :: 		Lcd_Cmd(88);
	MOVLW      88
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,37 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman4[i]);
	CLRF       Supder_i_L0+0
L_Supder9:
	MOVF       Supder_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Supder10
	MOVF       Supder_i_L0+0, 0
	ADDLW      _Superman4+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman4+0)
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
	INCF       Supder_i_L0+0, 1
	GOTO       L_Supder9
L_Supder10:
;Superman.c,38 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,39 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF       FARG_Supder_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Supder_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,40 :: 		}
L_end_Supder:
	RETURN
; end of _Supder

_Infiz:

;Superman.c,44 :: 		void Infiz(char pos_row, char pos_char) {
;Superman.c,46 :: 		Lcd_Cmd(96);
	MOVLW      96
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,47 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman5[i]);
	CLRF       Infiz_i_L0+0
L_Infiz12:
	MOVF       Infiz_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Infiz13
	MOVF       Infiz_i_L0+0, 0
	ADDLW      _Superman5+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman5+0)
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
	INCF       Infiz_i_L0+0, 1
	GOTO       L_Infiz12
L_Infiz13:
;Superman.c,48 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,49 :: 		Lcd_Chr(pos_row, pos_char, 4);
	MOVF       FARG_Infiz_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Infiz_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      4
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,50 :: 		}
L_end_Infiz:
	RETURN
; end of _Infiz

_Midinfiz:

;Superman.c,53 :: 		void Midinfiz(char pos_row, char pos_char) {
;Superman.c,55 :: 		Lcd_Cmd(104);
	MOVLW      104
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,56 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman6[i]);
	CLRF       Midinfiz_i_L0+0
L_Midinfiz15:
	MOVF       Midinfiz_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Midinfiz16
	MOVF       Midinfiz_i_L0+0, 0
	ADDLW      _Superman6+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman6+0)
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
	INCF       Midinfiz_i_L0+0, 1
	GOTO       L_Midinfiz15
L_Midinfiz16:
;Superman.c,57 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,58 :: 		Lcd_Chr(pos_row, pos_char, 5);
	MOVF       FARG_Midinfiz_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Midinfiz_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,59 :: 		}
L_end_Midinfiz:
	RETURN
; end of _Midinfiz

_Midinfder:

;Superman.c,63 :: 		void Midinfder(char pos_row, char pos_char) {
;Superman.c,65 :: 		Lcd_Cmd(112);
	MOVLW      112
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,66 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman7[i]);
	CLRF       Midinfder_i_L0+0
L_Midinfder18:
	MOVF       Midinfder_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Midinfder19
	MOVF       Midinfder_i_L0+0, 0
	ADDLW      _Superman7+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman7+0)
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
	INCF       Midinfder_i_L0+0, 1
	GOTO       L_Midinfder18
L_Midinfder19:
;Superman.c,67 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,68 :: 		Lcd_Chr(pos_row, pos_char, 6);
	MOVF       FARG_Midinfder_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Midinfder_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,69 :: 		}
L_end_Midinfder:
	RETURN
; end of _Midinfder

_Infder:

;Superman.c,72 :: 		void Infder(char pos_row, char pos_char) {
;Superman.c,74 :: 		Lcd_Cmd(120);
	MOVLW      120
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,75 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman8[i]);
	CLRF       Infder_i_L0+0
L_Infder21:
	MOVF       Infder_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_Infder22
	MOVF       Infder_i_L0+0, 0
	ADDLW      _Superman8+0
	MOVWF      R0+0
	MOVLW      hi_addr(_Superman8+0)
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
	INCF       Infder_i_L0+0, 1
	GOTO       L_Infder21
L_Infder22:
;Superman.c,76 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,77 :: 		Lcd_Chr(pos_row, pos_char, 7);
	MOVF       FARG_Infder_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_Infder_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Superman.c,78 :: 		}
L_end_Infder:
	RETURN
; end of _Infder

_main:

;Superman.c,95 :: 		void main() {
;Superman.c,96 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Superman.c,97 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Superman.c,98 :: 		TRISB = 0;
	CLRF       TRISB+0
;Superman.c,100 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Superman.c,101 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Superman.c,102 :: 		Lcd_Out(1,1,"SUPERMAN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Superman+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Superman.c,104 :: 		Supiz(1,11);
	MOVLW      1
	MOVWF      FARG_Supiz_pos_row+0
	MOVLW      11
	MOVWF      FARG_Supiz_pos_char+0
	CALL       _Supiz+0
;Superman.c,105 :: 		Midsupiz(1,12);
	MOVLW      1
	MOVWF      FARG_Midsupiz_pos_row+0
	MOVLW      12
	MOVWF      FARG_Midsupiz_pos_char+0
	CALL       _Midsupiz+0
;Superman.c,106 :: 		Midsupder(1,13);
	MOVLW      1
	MOVWF      FARG_Midsupder_pos_row+0
	MOVLW      13
	MOVWF      FARG_Midsupder_pos_char+0
	CALL       _Midsupder+0
;Superman.c,107 :: 		Supder(1,14);
	MOVLW      1
	MOVWF      FARG_Supder_pos_row+0
	MOVLW      14
	MOVWF      FARG_Supder_pos_char+0
	CALL       _Supder+0
;Superman.c,108 :: 		Infiz(2,11);
	MOVLW      2
	MOVWF      FARG_Infiz_pos_row+0
	MOVLW      11
	MOVWF      FARG_Infiz_pos_char+0
	CALL       _Infiz+0
;Superman.c,109 :: 		Midinfiz(2,12);
	MOVLW      2
	MOVWF      FARG_Midinfiz_pos_row+0
	MOVLW      12
	MOVWF      FARG_Midinfiz_pos_char+0
	CALL       _Midinfiz+0
;Superman.c,110 :: 		Midinfder(2,13);
	MOVLW      2
	MOVWF      FARG_Midinfder_pos_row+0
	MOVLW      13
	MOVWF      FARG_Midinfder_pos_char+0
	CALL       _Midinfder+0
;Superman.c,111 :: 		Infder(2,14);
	MOVLW      2
	MOVWF      FARG_Infder_pos_row+0
	MOVLW      14
	MOVWF      FARG_Infder_pos_char+0
	CALL       _Infder+0
;Superman.c,112 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;Superman.c,113 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

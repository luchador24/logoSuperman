#line 1 "C:/Users/jocma/OneDrive/Escritorio/Arquitectura l/Proyectos micro C/Superman.c"
const char Superman1[] = {0,3,7,14,29,25,29,15};

void Supiz(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman1[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

const char Superman2[] = {0,31,31,24,16,16,31,31};

void Midsupiz(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman2[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}


const char Superman3[] = {0,31,31,6,3,0,31,31};

void Midsupder(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(80);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman3[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}

const char Superman4[] = {0,24,30,30,23,3,7,22};

void Supder(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman4[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}

const char Superman5[] = {0,0,28,12,4,0,0,0};

void Infiz(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(96);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman5[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 4);
}
const char Superman6[] = {0,22,31,28,14,7,3,1};

void Midinfiz(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(104);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman6[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 5);
}

 const char Superman7[] = {0,2,6,30,14,28,24,16};

void Midinfder(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(112);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman7[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 6);
}
const char Superman8[] = {28,24,16,0,0,0,0,0};

void Infder(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(120);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(Superman8[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 7);
}


sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

void main() {
ANSEL = 0;
ANSELH = 0;
TRISB = 0;

Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);
Lcd_Out(1,1,"SUPERMAN");

Supiz(1,11);
Midsupiz(1,12);
Midsupder(1,13);
Supder(1,14);
Infiz(2,11);
Midinfiz(2,12);
Midinfder(2,13);
Infder(2,14);
Delay_ms(500);
}

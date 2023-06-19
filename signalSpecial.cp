#line 1 "C:/Users/rherr/Downloads/logoBatman/signalSpecial.c"
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
#line 26 "C:/Users/rherr/Downloads/logoBatman/signalSpecial.c"
const char character[] = {0,15,26,28,30,15,0,0};

void CustomChara(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

const char character2[] = {0,14,27,31,31,14,0,0};

void CustomCharc(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

 const char character11[] = {0,1,6,14,31,31,31,31};

void CustomChar111(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character11[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

const char character12[] = {0,2,3,3,23,31,31,31};

void CustomChar121(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character12[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}

const char character13[] = {0,8,24,24,29,31,31,31};

void CustomChar131(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(80);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character13[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}

const char character14[] = {0,16,12,14,31,31,31,31};

void CustomChar141(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character14[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}

const char character21[] = {31,31,31,14,4,2,0,0};

void CustomChar211(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(96);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character21[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 4);
}

const char character22[] = {31,31,31,19,1,0,0,0};

void CustomChar221(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(104);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character22[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 5);
}

const char character23[] = {31,31,31,25,16,0,0,0};

void CustomChar231(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(112);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character23[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 6);
}

const char character24[] = {31,31,31,14,4,8,0,0};

void CustomChar241(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(120);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character24[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 7);
}







char i;
void main() {
ANSEL = 0;
ANSELH = 0;
TRISB = 0;
TRISD = 0;

Lcd_Init();
#line 162 "C:/Users/rherr/Downloads/logoBatman/signalSpecial.c"
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(2,1, "BATMAN");
 CustomChar111(1,8);
 CustomChar121(1,9);
 CustomChar131(1,10);
 CustomChar141(1,11);
 CustomChar211(2,8);CustomChar221(2,9);CustomChar231(2,10);CustomChar241(2,11);


}

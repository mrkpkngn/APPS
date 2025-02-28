//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

// Functions
// void some_asm_function();

// Variables
// type g_some_c_variable;
// 0x00 - BYTE

int g_int_number = 0x12345678;
char g_char_n1, g_char_n2, g_char_n3, g_char_n4;
long g_long_my_password = 0x796164206563414e;
long g_long_lnum = 0x8090A0B0C0D0E0F0;
char g_char_password[] = " ";

void setChar();
void setByte0();
void switchPos();
void longToString();

int main()
{
    setChar();
    printf("Char 1:0x%X\tChar 2:0x%X\tChar 3:0x%X\tChar 4:0x%X\t\n", g_char_n1, g_char_n2, g_char_n3, g_char_n4);
    setByte0();
    printf("0x%X\n", g_int_number);
    switchPos();
    printf("0x%lX\n", g_long_lnum);
    longToString();
    printf("Password: %s\n", g_char_password);
}

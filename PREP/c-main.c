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

long g_long_array[ 2 ];
int g_int_number[4] = {0x121212, 0x343434, 0x565656, 0x787878};
int g_int_code = 0x11223344;
char g_str1[] = "cat";
char g_str2[ 20 ] = "nice ";

void joinIntegers();
void reorderBytes();
void concatStr();

int main()
{
    joinIntegers();
    printf("g_long_array[0]: 0x%lX\n", g_long_array[0]);
    printf("g_long_array[1]: 0x%lX\n", g_long_array[1]);
    reorderBytes();
    printf("0x%X\n", g_int_code);
    concatStr();
    printf("%s\n", g_str2);
}

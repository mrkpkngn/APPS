//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int g_int_a = 11, g_int_b = 22;
long g_long_1 = 0x1122334455667788;
char g_char_hello[] = "hello";

void asm_function();
void asm_function2();
void asm_function3();

int main()
{
    asm_function();
    printf("Long=0x%lx\tLSB=0x%x\tMSB=0x%x\n",g_long_1, g_int_a, g_int_b);
    g_int_a = 0xCAFECAFE;
    g_int_b = 0xCACA0000;
    asm_function2();
    printf("New Long =0x%lx\n", g_long_1);
    printf("char = %s\n", g_char_hello);
    asm_function3();
    printf("char = %s\n", g_char_hello);
}

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

void asm_function();

int main()
{
    printf("a = %d\tb = %d\n", g_int_a, g_int_b);
    asm_function();
    printf("a = %d\tb = %d\n", g_int_a, g_int_b);
}

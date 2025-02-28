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

int g_int_a = 3333, g_int_b = 4444, g_int_max = 0, g_int_min = 0;
int g_int_array[10] = {1, -2, 3, -4, 5, -6, 7, -8, 9 , -10};
char g_str[] = " Hell o pro gra mmer s !";
int g_int_spaces;
void asmSelectMax();
void asmArrayMin();
void asmNumSpaces();

int main()
{
    asmSelectMax();
    printf("MAX: %d\n", g_int_max);
    asmArrayMin();
    printf("MIN: %d\n", g_int_min);
    asmNumSpaces();
    printf("Spaces: %d\n", g_int_spaces);
}

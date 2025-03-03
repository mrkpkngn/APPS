//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int g_int_array[ 10 ] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
int g_int_num = 0, g_int_limit = 5, g_int_left = 0, g_int_right = 0, g_int_odd = 0, g_int_underscore = 0;
char g_text[] = "He((llo) pro(g)r(a)mers)";
long g_long_array[ 10 ] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
char g_str[] = "_My__name__is____Santa_Class :-)";

void belowLimit();
void countParentheses();
void countOdd();
void countUnderscore();

int main()
{
    belowLimit();
    printf("Numbers Below Limit: %d\n", g_int_num);
    countParentheses();
    printf("Left Parentheses: %d\n", g_int_left);
    printf("Right Parentheses: %d\n", g_int_right);
    countOdd();
    printf("Odd Numbers: %d\n", g_int_odd);
    countUnderscore();
    printf("Underscores: %d\n", g_int_underscore);
}

//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int g_int_numneg = 0, g_int_sum = 0, g_int_position = 0;
long g_long_array[ 10 ] = { 1, -2, 3, -4, 5, -6, 7, -8, 9, -10 };
int g_int_array[ 10 ] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
char g_str[] = "My name is Santa Class :-)";

void countNegative();
void addArray();
void highestPos();

int main()
{
    countNegative();
    printf("Negative Numbers: %d\n", g_int_numneg);
    addArray();
    printf("Sum of Array: %d\n", g_int_sum);
    highestPos();
    printf("Position of Highest Value: %d\n", g_int_position);
    return 0;
}

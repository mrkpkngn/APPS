//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

int arguments(int a, int b, int c){
    printf("a=%d\tb=%d\tc=%d\n", a, b, c);
}

long sum_long(long a, long b);
int sum_int(int a, int b);
int mystrlen(char* t_str);
void str2up(char*t_char);
void minmax_int (int *t_int, int t_N, int *t_min, int *t_max);
long in_range (long *t_long, int t_N, long t_from, long t_to);

int main()
{
    int i = 5;
    arguments(i++, i++, i++);
    char string[]= "helLo!";
    printf("sum: %ld\n", sum_long(100000000, 200000000));
    printf("sum: %d\n", sum_int(10, 20));
    printf("length: %d\n", mystrlen(string));
    str2up(string);
    printf("Upper: %s\n", string);
    int int_array[10] = {-1, 10, -50, 5, -20, 50, -15, 80, -7, 60};
    int min, max;
    minmax_int(int_array, 10, &min, &max);
    printf("min=%d\tmax=%d\n",min, max);
    long array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    printf("Inside Range: %ld\n", in_range(array, 10, 4, 10));
    return 0;
}
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
}

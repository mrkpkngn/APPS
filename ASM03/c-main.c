//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

char str[] = "hElLo wOrlD";

void* str2loup(char* string, int upOrLow );
void bubble( int *array, int N );
char most_often( char *str );
int array[]={5, 3, 1, 2, 9};

int main()
{
    str2loup(str, 2 );
    printf("%s\n", str); // 1 - To Upper && 2 - To Lower
    bubble(array, 5);

    for(int x =0; x < 5; x++){
        printf("%d ", array[x]);
    }
    printf("\n");

    
    printf("%c\n", most_often(str));
}

//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>


char string[] = "hEllO woRld!";
void* switchChar(char* str);
void bubbleSort (int* arr, int N, int ascOrDesc); // 1 -Ascending || 2 - Descending
int numMostOften(int* numArr, int N);

int numArr[] = {5 , 3, 1, 2};
int numArr2[] = {2, 1, 2, 3, 4, 4, 4, 4};

int main()
{
    switchChar(string);
    printf("%s\n", string);

    bubbleSort(numArr, 4, 1);
    for(int x = 0; x < 4; x++){
        printf("%d ", numArr[x]);
    }
    printf("\n");
    bubbleSort(numArr, 4, 2);
    for(int x = 0; x < 4; x++){
        printf("%d ", numArr[x]);
    }
    printf("\n");

    printf("%d\n", numMostOften(numArr2, 7));
}


#include <stdio.h>
 
int main()
{
    int x = 1131;
    int *y = &x;

    printf("x value: %d\n", x);
    printf("x address: %d\n", &x);
    printf("y value, x address: %d\n", y);
    printf("y value's value: %d\n", *y); // 포인터 y값은 address인데 그 address의 값
    printf("y address: %d\n", &y);
}

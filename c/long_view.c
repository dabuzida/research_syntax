#include <stdio.h>
 
int main()
{
    // cd .. 상위폴더 이동
    int x = 1131;
    int *y = &x;

    printf("x value: %d\n", x);
    printf("x address: %d\n", &x);
    printf("y value, x address: %d\n", y);
    printf("y value's value: %d\n", *y); // 포인터 y값은 address인데 그 address의 값
    printf("y address: %d\n", &y);


    // int num = 11;
    // int *num2 = &num;
    // printf("%d\n", num);
    // printf("%d\n", num2);
    // printf("%s \n", "sdzd");

    // int x;
    // printf("input number: ");
    // scanf("%d", &x);
    // printf("value: %d\n", x);
    return 0;
}

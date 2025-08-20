#include <stdio.h>
 
int main()
{
    int num = 1131;
    int *p_num = &num;

    printf("%d\n", num);
    printf("%d\n", p_num);
    // 근데 입력도 받아야해서 vsc에서 되려나? 따로 창 열어서 하는식으로 해야되는듯?
}

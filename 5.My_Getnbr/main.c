#include <stdio.h>

extern int my_Getnbr(const char *str);

int main() {
    const char *str1 = "12345";
    const char *str2 = "42";

    int num1 = my_Getnbr(str1);
    int num2 = my_Getnbr(str2);

    printf("Num1: %d\n", num1);
    printf("Num2: %d\n", num2);
    return 0;
}

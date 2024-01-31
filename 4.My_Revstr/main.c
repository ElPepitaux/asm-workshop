#include <stdio.h>

extern void my_Revstr(char* str);

int main() {
    char str[] = "Hello, World!";

    printf("Chaîne d'origine: %s\n", str);

    my_Revstr(str);

    printf("Chaîne inversée: %s\n", str);

    return 0;
}

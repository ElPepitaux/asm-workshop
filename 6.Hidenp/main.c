#include <stdio.h>
#include <stdbool.h>

extern bool Hidenp(char *str1, char *str2);

int main() {
    char str_to_comp[] = "guidon";
    char str_to_check_success[] = "gdufigdjolnm"; //doit renvoyer 1
    char str_to_check_failure[] = "gdufigdjolm"; //doit renvoyer 0

    printf("%d\n", Hidenp(str_to_comp, str_to_check_failure));

    return 0;
}

#include <stdio.h>

extern size_t my_Strlen(const char *);

int main() {
    const char *test_string = "Hello, world!";
    size_t length = my_Strlen(test_string);

    printf("Length of '%s' is %zu\n", test_string, length); // length doit être égal à 13

    return 0;
}

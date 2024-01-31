BITS 64

section .text
    global my_Strlen

my_Strlen:
        xor rcx, rcx

my_Strlen_loop:
    cmp byte [rdi + rcx], 0
    je my_Strlen_end
    inc rcx
    jmp my_Strlen_loop

my_Strlen_end:
    mov rax, rcx
    ret

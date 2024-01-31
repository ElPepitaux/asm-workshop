section .text
    global my_Getnbr
my_Getnbr:
    xor rcx, rcx
    xor rax, rax
    xor r8, r8

my_Getnbr_loop:
    mov r8b, byte [rdi + rcx]
    cmp r8b, 0
    je my_end
    sub r8b, '0'
    imul rax, 10
    add rax, r8
    inc rcx
    jmp my_Getnbr_loop

my_end:
    ret

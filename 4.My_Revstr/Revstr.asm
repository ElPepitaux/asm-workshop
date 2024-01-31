BITS 64

section .text
    global my_Revstr

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

my_Revstr:
    call my_Strlen
    xor rcx, rcx

my_Revstr_loop:
    init_rev:
        xor r8, r8
        xor rcx, rcx
        xor rax, rax
        jmp rev_loop_push
    rev_loop_push:
        mov r8b, [rdi + rcx]
        cmp r8b, 0
        jne rev_loop_pop
        jmp rev_loop_end
    rev_loop_pop:
        push r8
        inc rcx
        jmp rev_loop_push
    rev_loop_end:
        pop r8
        mov [rdi + rax], r8
        inc rax
        dec rcx
        cmp rcx, 0
        jne rev_loop_end
        jmp end_rev
    end_rev:
        ret



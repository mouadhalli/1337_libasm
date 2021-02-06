section .text
    global _ft_strcmp

_ft_strcmp:
    xor rax, rax
    xor rcx, rcx
    xor rbx, rbx

loop:
    mov cl, byte[rdi + rax]
    mov bl, byte[rsi + rax]
    cmp cl, 0
    je  ret
    cmp bl, 0
    je  ret
    cmp cl, bl
    je  increment
    jmp ret

increment:
    inc rax
    jmp loop

ret:
    sub rcx, rbx
    mov  rax, rcx
    ret
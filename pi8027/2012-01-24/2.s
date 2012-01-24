.data
.align 4
.text
.globl main
fib:
    cmp $2, %eax
    jb L1
    push %eax
    sub $2, %eax
    call fib
    mov %eax, %ebx
    pop %eax
    push %ebx
    sub $1, %eax
    call fib
    pop %ebx
    add %ebx, %eax
    ret
L1: mov $1, %eax
    ret
main:
    mov $10, %eax
    call fib
    call stop


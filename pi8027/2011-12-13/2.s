    .text
    .globl main
main:
    mov $0, %eax
    mov $0, %ebx
L1:
    add $1, %eax
    add %eax, %ebx
    cmp $10, %eax
    jne L1
    call stop

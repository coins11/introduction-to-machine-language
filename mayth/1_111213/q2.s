.text
.align 4
.globl main
main:
    mov $1, %eax
    mov $0, %ebx
L1:
    cmp $11, %eax
    je L2
    add %eax, %ebx
    add $1, %eax
    jmp L1
L2: call stop

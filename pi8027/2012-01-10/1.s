.text
.globl main
main:
    mov $0, %eax
    mov $1, %ebx
    mov $1, %ecx
L1: mov %ebx, %edx
    add %ecx, %edx
    mov %ecx, %ebx
    mov %edx, %ecx
    add $1, %eax
    cmp $10, %eax
    jne L1
    call stop

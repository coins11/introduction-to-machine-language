.text
.align 4
.globl main
main:
    mov $1, %eax
    mov $2, %ebx
    mov $0, %ecx
    add %eax, %ecx
    add %ebx, %ecx

    call stop

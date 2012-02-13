.text
.align 4
.globl main
main: mov $1, %eax
    mov $2, %ebx
    mov $3, %ecx
    mov $4, %edx
    mov %eax, %esi
    add %ebx, %esi
    add %ecx, %esi
    add %edx, %esi

    call stop

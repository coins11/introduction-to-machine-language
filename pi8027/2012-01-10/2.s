.data
.align 4
x:  .long 3456789012
y:  .long 2345678901
.text
.globl main
main:
    mov $1, %eax
    mov x, %ebx
    mov y, %ecx
    add %ebx, %ecx
    jo L1
    mov $0, %eax
L1: call stop

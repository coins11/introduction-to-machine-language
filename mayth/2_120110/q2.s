.data
.align 4
x: .long 0x7FFFFFFF
y: .long 0x00000002
.text
.globl main
main:
    mov $0, %eax
    mov x, %edx
    add y, %edx
    jo L1
    jmp END
L1:
    mov $1, %eax
END:
    call stop

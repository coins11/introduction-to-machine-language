.data
.align 4
x:  .long 0x87001240, 0x00124011, 0x8130FFFF, 0x1234
y:  .long 0x07001245, 0x12F01348, 0x8230FFFF, 0x12
.text
.globl main
main:
    mov x, %eax
    mov x+4, %ebx
    mov x+8, %ecx
    mov x+12, %edx
    add y, %eax
    adc y+4, %ebx
    adc y+8, %ecx
    adc y+12, %edx
    call stop

.data
.align 4
x: .long 0x87001240, 0x00124011, 0x8130FFFF, 0x1234
y: .long 0x07001245, 0x12f01348, 0x8230FFFF, 0x12
.text
.globl main
main:
    mov $0, %esi

    mov x(, %esi, 4), %eax
    adc y(, %esi, 4), %eax
    inc %esi

    mov x(, %esi, 4), %ebx
    adc y(, %esi, 4), %ebx
    inc %esi

    mov x(, %esi, 4), %ecx
    adc y(, %esi, 4), %ecx
    inc %esi
    
    mov x(, %esi, 4), %edx
    adc y(, %esi, 4), %edx

    call stop


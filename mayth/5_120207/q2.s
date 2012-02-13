.text
.globl fib
fib:
  # fib(int x)
  push %ebp
  mov %esp, %ebp
  sub $4, %esp
  # compare: x >= 2
  cmp $2, 8(%ebp)
  jge fibL2
  # if x < 2
  mov 8(%ebp), %eax
  jmp fibRet
  # if x >= 2
fibL2:
  mov 8(%ebp), %eax
  sub $1, %eax
  push %eax
  call fib
  add $4, %esp
  mov %eax, -4(%ebp)
  mov 8(%ebp), %eax
  sub $2, %eax
  push %eax
  call fib
  add $4, %esp
  add -4(%ebp), %eax
fibRet:
  mov %ebp, %esp
  pop %ebp
  ret

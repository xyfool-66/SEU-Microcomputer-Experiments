# Here is a recursive implementation of factorial, first in C, then in assembly: 
# int factorial (int n){
#     if (n < 2) return 1;
#     return (n * factorial (n-1));  /* n! = n * (n-1)! */
# }


.text

factorial:
    bgtz $a0, doit
    li   $v0, 1          # base case, 0! = 1
    jr   $ra
doit:
    sub  $sp,8           # stack frame 
    sw   $s0,0($sp)      # will use for argument n   
    sw   $ra,4($sp)      #  return address
    sub  $a0, 1          #  n-1
    jal  factorial       #  v0 = (n-1)!
    mul  $v0,$s0,$v0     #     n*(n-1)!

    lw   $s0,($sp)       # restore registers from stack
    lw   $ra,4($sp) 
    add  $sp,8
    jr   $ra


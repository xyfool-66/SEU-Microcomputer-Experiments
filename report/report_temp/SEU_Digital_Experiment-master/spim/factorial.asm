# Here is a recursive implementation of factorial, first in C, then in assembly: 
# int factorial (int n){
#     if (n < 2) return 1;
#     return (n * factorial (n-1));  /* n! = n * (n-1)! */
# }


.text
.globl main

factorial:
    bgtz $a0, doit
    li   $v0, 1          # base case, 0! = 1
    jr   $ra
doit:
    sub  $sp,8           # stack frame 
    sw   $s0,0($sp)      # will use for argument n   
    sw   $ra,4($sp)      #  return address

    move $s0, $a0        #  save argument
    sub  $a0, 1          #  n-1
    jal  factorial       #  v0 = (n-1)!
    mul  $v0,$s0,$v0     #     n*(n-1)!

    lw   $s0,($sp)       # restore registers from stack
    lw   $ra,4($sp) 
    add  $sp,8
    jr   $ra
main:
    li   $a0, 7          # set the argument for the factorial function to 7
    sub  $sp, 4          # create the stack frame
    sw   $ra,0($sp)      # save the return address
    jal  factorial       # call factorial
    move $t1, $v0        # save the return value
    lw   $ra,0($sp)      # restore the orignal return address
    add  $sp,4
    jr   $ra

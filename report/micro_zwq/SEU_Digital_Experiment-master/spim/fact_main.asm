# fact_main.asm
# ALL RIGHTS RESERVED (C) 2021 Wuqiong Zhao

.extern fact 32    # module factorial of 32 bits

.text
main:

    li   $a0, 7          # set the argument for the factorial function to 7
    sub  $sp, 4          # create the stack frame
    sw   $ra,0($sp)      # save the return address
    jal  fact            # call fact
    move $t1, $v0        # save the return value
    lw   $ra,0($sp)      # restore the orignal return address
    add  $sp,4
    jr   $ra

        .data
msg:    .asciiz "Hello World!\n\n"  # string for display
msg1:   .asciiz "Hello Friend!\n\n" # string for display
        .extern foobar 4            # external parameter (exit)

        .text
        .globl main
main:   sub $sp,$sp,4
        sw $ra,0($sp)   #
        li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string
        addi $s0,$0,100 # add test command
        addi $s1,$0,64
        addi $s2,$0,8
again:
        add $a0,$s2,$0
        jal myproc1
        jal myproc2
        addi $s2,$s2,-1
        bne $s2,$0,again
        lw $t1, foobar
        lw $ra,0($sp)
        jr $ra          # return to caller

myproc1:
        addi $s3,$0,0xffffffff
        li $v0, 4       # syscall 4 (print_str)
        la $a0, msg1    # argument: string
        syscall         # print the string
        jr $ra

myproc2: addi $s4,$0,0x00000003
        jr $ra
        

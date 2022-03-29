# factorial_direct.asm
# ALL RIGHTS RESERVED (C) 2021 Wuqiong Zhao

.text
main:
      addi $s0, $0, 7     # $s0 = 7
      addi $t0, $0, 2     # iter cnt
      addi $s1, $0, 1     # result
loop: mul  $s1, $s1, $t0  # $s1 = $s1 * $t0
      beq  $t0, $s0, end  # if ($t0 = $s0) goto end
      addi $t0, $t0, 1    # $t0++
      j    loop           # iterate
end:  jr   $ra            # end of program

# To see the calculation result, look into register $s1
# In Spim, just call "print $s1"


# Find the largest Fibonacci number smaller than 100
.data
x:    .space 4          # int x, y;
y:    .space 4

.text
main:
     sw    $0,x         # x = 0;
     addi  $9,$0,1      # y = 1;
     sw    $9,y
     lw    $8,x
while:                  # while (y < 100) {
     slti  $10,$9,100
     beq   $10,$0,endw
     add   $10,$0,$8    #     int t = x;
     add   $8,$0,$9     #     x = y;
     add   $9,$10,$9    #     y = t + y;
     j     while        # }
endw:
     sw    $8,x         # answer is in x
     sw    $9,y
     ori   $v0, $0, 10  # system call 10 for exit
     syscall            # we are out of here.

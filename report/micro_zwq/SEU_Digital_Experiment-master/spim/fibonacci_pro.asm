# Find the largest Fibonacci number smaller than 100

.data

x:    .space 4          # int x, y;
y:    .space 4
msg1:	.asciiz	"Enter A:   "
msg2:	.asciiz	"Enter B:   "
msg3:	.asciiz	"Largeset Fibonacci No. <100)= "
newline:   .asciiz	"\n"


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

# Print string msg3
	li	$v0, 4
	la	$a0, msg3
	syscall

	# Print sum
	li	$v0,1		# print_int syscall code = 1
	lw	$a0,x  	# int to print must be loaded into $a0
	syscall

	# Print \n
	li	$v0,4		# print_string syscall code = 4
	la	$a0, newline
	syscall


     ori   $v0, $0, 10  # system call 10 for exit
     syscall            # we are out of here.

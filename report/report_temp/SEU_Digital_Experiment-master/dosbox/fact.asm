ASSUME CS:CODE, DS:DATA
DATA SEGMENT
N EQU 05H
DATA ENDS

CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AXde
XOR AX,AX
MOV AX, 01H
MOV BX, N

FACTORIAL:
MUL BX
DEC BX
JNZ FACTORIAL
MOV CX,AX

HLT
CODE ENDS
END START
.text
intro:      .asciz "\nRafael and Lubov\nrafaelborges and lchalakova\nPowers\nWelcome to the program!\n"
formatstr:   .asciz "%ld"
result:    .asciz "The result is: %ld \n"
prompt_n:    .asciz "Please insert a number for the factorial function:  "

.global main

main:

    #prologue
    pushq   %rbp  #push the base pointer
    movq   %rsp, %rbp   #copy stack pointer value to base pointer
  
    movq   $0, %rax    #no vector registers in use for printf
    movq   $prompt_n, %rdi  #first parameter:  prompt for N
    call   printf    #call printf to print intro
 
    subq $16, %rsp #allocate stack space for the variable
    leaq -8(%rbp), %rsi #load address of stack variable into rsi
    movq $formatstr, %rdi #load the first argument of scanf
    movq $0, %rax #no vector registers for scanf
    call scanf #call scanf
 
    addq $8, %rsp  #add 8 to the stack pointer
    popq %rdi  #pop the N  from the stack into rdi
    call factorial  #call factorial
    
    movq %rax, %rsi  #copy the value from rax into rsi
    movq   $0, %rax    #no vector registers in use for printf
    movq   $result, %rdi  #first parameter:  the result string
    call   printf    #call printf to print result


    #epilogue
    movq %rbp, %rsp  #clear local variables from the stack
    popq %rbp      #restore the base pointer location
    
    jmp end  #jump to end

factorial:
   #prologue
   pushq  %rbp #push the base pointer
   movq %rsp, %rbp   #copy the stack pointer value to the base pointer

   cmpq $0, %rdi  #Compare rdi to 0
   jle base_case  #jump if the value in rdi is less or equal to 0
   pushq %rdi  #push N into the stack
   decq %rdi   #decrement N which is in rdi
   call factorial   #do the next recursion with (n-1)
   popq %rdi    #Pop N into rdi
   mulq %rdi    #Multplication of n * factorial of (n-1)
   jmp end_factorial  #jum to end factorial


   base_case:

   movq $1, %rax  #return value 1 in rax

   end_factorial:
 
   #epilogue
   movq %rbp, %rsp #clear local variables from the stack
   popq %rbp      #restore the base pointer location

   ret #return from factorial

end:
    
    movq   $0, %rdi   #If there are no errors, rdi will be 0
    call    exit   #Exit the program


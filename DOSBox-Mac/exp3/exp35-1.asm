DATA  SEGMENT
STR1  DB 30H,31H,32H,33H,34H
      DB 35H,36H,37H,38H,39H
      DB 40H,41H,42H,43H,44H,45H
COUNT EQU $-STR1        ;定义数据长度
STR2  DB COUNT DUP(0)   ;复制产生一个一样长度的数据段
DATA  ENDS

CODE SEGMENT
ASSUME DS:DATA,CS:CODE
START: MOV AX,DATA
       MOV DS,AX
       LEA SI,STR1   ;源字符串
       LEA DI,STR2   ;目标字符串
       MOV CX,COUNT  ;数据个数复制给CX
NEXT:  MOV AL,[SI]
       MOV [DI],AL   ;通过AL寄存器间接传递
       INC SI        
       INC DI        ;指针加1
       LOOP NEXT
CODE ENDS
END START


    DATA   SEGMENT
    DATA1  DB 08,04,03,03,05
    DATA2  DB 09
    SUM    DB 6 DUP(00)   ;把00复制6次，占用6个BYTE
    DATA   ENDS 
      
    CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START: MOV AX,DATA          
           MOV DS,AX             ;手动分配段地址
           MOV SI,OFFSET DATA2   ;DATA2的偏移地址给了SI
           MOV DL,[SI]           ;把SI内所指向的存储器的内容给了DL
           MOV SI,OFFSET DATA1   ;DATA1的偏移地址给了SI
           MOV DI,OFFSET SUM     ;SUM的偏移地址给了DI
           MOV CX,05             ;循环次数为5
    NEXT:  MOV AL,[SI]           ;一位位开始算，先从第一位开始
           INC SI                ;指针加一，指向下一位
           MUL DL                ;和09相乘
           AAM                   ;非压缩BCD码的乘法调整指令
           ADD AL,[DI]           ;[DI]中有上一个算出来的进位，先把进位加上
           AAA                   ;调整成非压缩BCD码
           MOV [DI],AL           ;调整好之后，把正确的低位给了AL
           INC DI                ;存放下一个数字的位置
           MOV [DI],AH           ;把上一个调整产生的进位放到DI中
           LOOP NEXT
           MOV  AH,4CH
           INT  21H
    CODE ENDS
    END START    

    DATA   SEGMENT
    NUM    DB 22,46,32,72,84,16,156  ;定义数据段
    MAXN   DB ?  ;定义结果存放处
    DATA   ENDS

    MAIN SEGMENT 
    ASSUME CS:MAIN,DS:DATA
    START: MOV  AX,DATA
           MOV  DS,AX     ;DATA数据段传入DS
           LEA  BX,NUM    ;获取NUM偏移地址，传入指针BX
           MOV  CX,07     ;循环次数为7
           MOV  AL ,[BX]  ;初始假设第一个数据是最大值
    AGAIN: INC  BX        ;BX指针后移1位
           CMP  AL,[BX]   ;比较数据大小并更新标志位
           JNBE NEXT      ;如果AL>[BX]，跳转至NEXT
           MOV  AL,[BX]   ;如果AL<[BX]，更新AL
    NEXT:  LOOP AGAIN     ;循环CX次
           MOV  MAXN,AL   ;将结果存入MAXN
    MAIN ENDS
    END START

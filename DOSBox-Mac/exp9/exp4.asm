DATA SEGMENT
TIME_IN       DB 9,?,9 DUP(?),'$'  ;缓冲区格式要求：XX:XX:XX ENT
                                   ;允许最大字符数（带回车）、实际字符数（不包括回车系统自动写入）、缓冲区、0DH
PRINT_ETR     DB 0DH,0AH,'$'       ;设置一回车输出串，在“：”显示后输出，换行缩进
                                   ;汇编里回车是回到本行首位，换行是到下一行同样位置
                                   ;好像0AH也带回车
TIME_CHG      DB ?,?,?             ;设置一时间存储空间，便于在执行时间的ASCII码与压缩BCD码
WRONG_VALUE   DB 'Wrong value! Try again','$'                              ;错误类型1
WRONG_NUMBER  DB 'The input must be colons or number! Try again','$'       ;错误类型2
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:DATA
START: 
       MOV AX,DATA
       MOV DS,AX
       MOV ES,AX                   ;设置DS段和ES段的段地址
INPUT: 
       MOV DL,':'                  ;显示时间输入提示符号“：”
       MOV AH,02H
       INT 21H
       LEA DX,PRINT_ETR            ;附加任务1：显示“：”后输出一个换行，便于时间的正确输出
       MOV AH,09H
       INT 21H
       LEA DX,TIME_IN              ;接收输入的时间
       MOV AH,0AH
       INT 21H
LENTH_TEST:                        ;长度测试
       MOV AL,TIME_IN+1            ;实际键入字数 
       CMP AL,08H                  ;和8比较，不相等跳转到 WRONG_INPUT
       JNE WRONG_INPUT_2
FORMAT_TEST:                       ;格式测试
       MOV AL,TIME_IN+4            ;格式：XX:XX:XX
       CMP AL,':'
       JNE WRONG_INPUT_2
       MOV AL,TIME_IN+7
       CMP AL,':'
       JNE WRONG_INPUT_2
INIT_LOW_LIMIT_TEST:
       LEA SI,TIME_IN+2
       MOV CL,03H                  ;循环3次
LOW_LIMIT_TEST:
       MOV AL,[SI]		
       MOV AH,[SI+1]
       CMP AL,30H                  ;字符‘0’的ASCII码是30，不能小于0
       JB WRONG_INPUT_2            ;无符号小于则跳转
       CMP AH,30H                  ;字符‘0’的ASCII码是30，不能小于0
       JB WRONG_INPUT_2            ;无符号小于则跳转
       ADD SI,0003H
       LOOP LOW_LIMIT_TEST
INIT_HIGH_LIMIT_TEST:
       LEA SI,TIME_IN+2
       MOV CL,03H
HIGH_LIMIT_TEST:
       MOV AL,[SI]		
       MOV AH,[SI+1]
       CMP AL,39H                  ;字符‘9’的ASCII码是39，不能超过9，先得是个数字
       JA WRONG_INPUT_2            ;无符号大于则跳转
       CMP AH,39H                  ;字符‘9’的ASCII码是39，不能超过9，先得是个数字
       JA WRONG_INPUT_2            ;无符号大于则跳转
       ADD SI,0003H
       LOOP HIGH_LIMIT_TEST
HOUR_HIGH_TEST:
       MOV AL,TIME_IN+2
       CMP AL,32H                  ;字符‘2’的ASCII码是32，‘时’第一位不能超过2，‘分’和‘秒’同理
       JA WRONG_INPUT_1
HOUR_FULL_HIGH_TEST:
       MOV AL,TIME_IN+3
       MOV AH,TIME_IN+2
       CMP AX,3233H                ;字符‘3’的ASCII码是33，‘时’第二位不能超过3，‘分’和‘秒’同理
       JA WRONG_INPUT_1
MINUTE_TEST:
       MOV AL,TIME_IN+5
       CMP AL,35H
       JA WRONG_INPUT_1
SECOND_TEST:
       MOV AL,TIME_IN+8
       CMP AL,35H
       JA WRONG_INPUT_1
       JMP INIT_IN                 ;检查完进行一个时间数值的调整
WRONG_INPUT_1:
       LEA DX,WRONG_VALUE
       MOV AH,09H
       INT 21H
       JMP INPUT                   ;有错误需要重新输入
WRONG_INPUT_2:
       LEA DX,WRONG_NUMBER
       MOV AH,09H
       INT 21H
       JMP INPUT                   ;有错误需要重新输入
INIT_IN:
       LEA SI,TIME_IN+2            ;时间ASCII码转化为压缩BCD码的初始化
       LEA DI,TIME_CHG
       MOV BL,03H                  ;时、分、秒各一次
       MOV CL,04H
TRANS_IN:                          ;结果是TIME_CHG中分别放着时、分、秒的BCD码
       MOV AL,[SI]		       ;移入相应时间量度的数值
       MOV AH,[SI+1]
       SHL AL,CL                   ;左移4位，把ASCII的30挪掉让时间的两位挨在一起   
       ROL AX,CL                   ;右移4位，把挨在一起的高低位挪进AL
       MOV [DI],AL
       DEC BL                      ;计算换算次数，判断是否换算完毕
       CMP BL,00
       JE GETTIME                  ;若换算完毕，进入下一部分操作
       ADD SI,0003H                ;指向下一时间单位的缓冲区存储空间
       INC DI                      ;时间储存区加1
       JMP TRANS_IN                ;循环进行换算操作
GETTIME:
       LEA DI,TIME_CHG             ;将时间的压缩BCD码赋给相应的寄存器
       MOV CH,[DI]
       MOV DH,[DI+1]
       MOV DL,[DI+2]
       JMP PRINT
SECPLUS:
       CALL DELAY                  ;执行延时1秒子程序
       MOV AL,DL                   ;秒+1，并进行压缩BCD码加法调整，计算完毕放回相应寄存器
       ADD AL,01
       DAA
       MOV DL,AL
SECOND:
       CMP DL,60H                  ;判断秒值与60的大小关系，小于则跳转执行输出初始化，否则
       JB INIT_OUT                 ;进行秒的进制调整，无符号小于则跳转
       MOV DL,00                   ;秒值置0
       MOV AL,DH                   ;分+1，并进行压缩BCD码加法调整，计算完毕放回相应寄存器
       ADD AL,01
       DAA
       MOV DH,AL
MINUTE:
       CMP DH,60H                  ;判断分值与60的大小关系，小于则跳转执行输出初始化，否则
       JB INIT_OUT                 ;进行分的进制调整
       MOV DH,00                   ;分值置0
       MOV AL,CH                   ;时+1，并进行压缩BCD码加法调整，计算完毕放回相应寄存器
       ADD AL,01
       DAA
       MOV CH,AL
HOUR:
       CMP CH,24H                  ;判断时值与24的大小关系，小于则跳转执行输出初始化，否则
       JB INIT_OUT                 ;进行时的进制调整
       MOV CH,00                   ;时值置0
INIT_OUT:
       LEA DI,TIME_CHG             ;时间输出的初始化
       LEA SI,TIME_IN+2
       MOV [DI],CH                 ;将各时间单位数值对应存放进TIME_CHG中，以备码制转换
       MOV [DI+1],DH
       MOV [DI+2],DL
       MOV BL,03H
       MOV CL,04H
TRANS_OUT:
       MOV AL,[DI]                 ;移入相应时间量度的压缩BCD码
       MOV AH,33H                  ;通过移位操作，可以得到对应的ASCII码
       ROR AX,CL
       ROR AH,CL
       MOV [SI],AL                 ;将转换的ASCII码存入缓冲区
       MOV [SI+1],AH
       DEC BL                      ;计算换算次数，判断是否换算完毕
       CMP BL,00
       JE PRINT                    ;若换算完毕，进入下一部分操作
       ADD SI,0003H                ;指向下一时间单位的缓冲区存储空间
       INC DI
       JMP TRANS_OUT               ;循环进行换算操作
PRINT: 
       MOV BX,DX                   ;保护计算得到的分、秒信息
       LEA DX,TIME_IN+2            ;输出时间
       MOV AH,09H
       INT 21H
IS_PUSH: 
       MOV AH,06                   ;判断是否有按键按下
       MOV DL,0FFH       
       INT 21H
       JNZ LAST                    ;若有按键按下，执行LAST
       MOV DX,BX                   ;若没有按键按下，则恢复分、秒信息，继续进行计时？
       JMP SECPLUS           
LAST:
       MOV AH,4CH                  ;返回dos，结束程序
       INT 21H
       HLT                         ;处理器进入暂停状态
DELAY PROC NEAR                    ;延时1秒子程序     
       PUSH CX
       PUSH AX
       PUSH DX
       PUSH BX
       MOV AH,2CH                  ;读取当前时间，CH：小时；CL：分；DH：秒；DL：百分之一秒
       INT 21H
       MOV BH,DH                   ;将当前秒数存在BH中
       MOV AH,2DH                  ;设置时间
       INT 21H
READ:
       MOV AH,2CH
       INT 21H
       CMP DH,BH                   ;比较两个时间的秒数，若相等则继续循环
       JE READ                     ;否则则经过了一秒
       POP BX
       POP DX
       POP AX
       POP CX
       RET
DELAY ENDP
CODE ENDS
END START

;Q&A
;回车换行
;同一行显示，最好：后面跟回车，否则覆盖有问题
;判断0～9，一位位判断，不能一起判断
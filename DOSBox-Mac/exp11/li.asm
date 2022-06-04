;--------------------------------------------------------------------------;
; * @Author: Xue Yufei
; * @Date: 2022-05-09 23:57:38
; * @LastEditors: Xue Yufei
; * @LastEditTime: 2022-05-21 12:05:38
; * @FilePath: /report/Users/apple/Documents/microcomputer/DOSBox-Mac/exp11/li.asm
; * @Description: Feel free to contact me at: yf_xue@seu.edu.cn
; * @Copyright (c) 2022 by Xue Yufei, All Rights Reserved. 
;--------------------------------------------------------------------------;

DATA SEGMENT
    TIMES_COUNTS DB ?
    SUN_COUNTS DB ?
    SUN_PRINT DB "    SUN"
    KEY_COUNTS DB ?
    OK_PRINT DB "    OK!"           ;字符串中的空格为按键次数预留(两个数字+两个空格+OK!)
DATA ENDS

STACK SEGMENT                                   ;为保护现场操作建立栈段空间
    STK DW 10 DUP(?)
STACK ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:DATA,SS:STACK
START:
    MOV AX,STACK
    MOV SS,AX
    MOV AX,DATA
    MOV DS,AX
    MOV AX,0000H                              ;设置中断向量操作
    MOV ES,AX
    MOV SI,1CH*4
    PUSH ES:[SI+2]                              ;保存原1CH中断向量
    PUSH ES:[SI]
    MOV WORD PTR ES:[SI+2],SEG TIMERINTS     ;设置新1CH中断向量
    MOV WORD PTR ES:[SI],OFFSET TIMERINTS

    MOV AL,09H                              ;用中断类型21H的35H功能取中断向量保存
    MOV AH,35H
    INT 21H
    PUSH ES
    PUSH BX
    MOV DX,OFFSET KEYINTS                   ;用中断类型21H的25H功能设置中断向量
    MOV AX,SEG KEYINTS
    MOV DS,AX
    MOV AL,09H
    MOV AH,25H
    INT 21H
    MOV AX,DATA                             ;恢复数据段地址
    MOV DS,AX

    STI                                         ;开中断
    MOV TIMES_COUNTS,00H                    ;定时中断次数置零
    MOV SUN_COUNTS,00H                      ;输出“SUN”次数置零
    MOV KEY_COUNTS,00H                      ;按键次数置零
SUN:
    CALL DISPl                                   ;输出太阳
    MOV AL,SUN_COUNTS   
    SUB AL,10                          ;sun次数-10,放入al 
    MOV AH,KEY_COUNTS
    SUB AH,10                           ;key次数-10，放入ah

    AND AL,AH                               ;只要有一个达到10，结果为0
    CMP AL,0
    ;CMP SUN_COUNTS,10                          ;比较输出“SUN”次数
    ;CMP KEY_COUNTS,10                           ;比较按键次数
    JNE SUN                                        ;不等于，继续输出太阳

    CLI                                          ;关中断
    MOV SI,1CH*4          
    POP ES:[SI]                                   ;恢复原1CH中断向量
    POP ES:[SI+2]

    POP DX                                  ;用中断类型21H的25H功能恢复中断向量,回顾line32 33
    POP DS
    MOV AL,09H
    MOV AH,25H
    INT 21H      

    MOV AH,4CH                                 ;返回DOS
    INT 21H

TIMERINTS PROC NEAR
    PUSH AX                                     ;保护现场
    PUSH BX
    PUSH DX
    PUSH SI
    STI                                           ;开中断
    INC TIMES_COUNTS                           ;定时中断次数+1
	CMP TIMES_COUNTS,9                       ;定时中断次数未到50不输出“SUN”;定时1s可以计算得1s/55ms=18
	JB PASS                                     ;低于
	MOV TIMES_COUNTS,00H                      ;定时中断次数清零，重新累加
    INC SUN_COUNTS                             ;输出“SUN”次数+1

    MOV AL, SUN_COUNTS
    ADD AL, 30H                                 ;将按键次数转换为ASCII码,以便输出
    CMP AL, 3AH
    JNE PRINT

    MOV SUN_PRINT, 31H                           ;按键次数为10的ASCII码,10是两位数,单独设置一下
    MOV SUN_PRINT+1, 30H
    JMP CHGSI

	LEA SI,SUN_PRINT                            ;取“SUN”偏移地址，准备输出
	CALL DISP2
PRINT:  
    MOV SUN_PRINT, AL
CHGSI:  
    LEA BP,SUN_PRINT                             ;为DISP2中进行INT 10H中断作预处理
    MOV AX,SEG SUN_PRINT                        
    MOV ES,AX
    CALL DISP2
PASS:
    POP SI                                       ;恢复现场
    POP DX
    POP BX
    POP AX      
    IRET                                         ;中断返回
TIMERINTS ENDP

DISPl PROC NEAR
    PUSH  AX                                    ;保护现场
    PUSH  BX
    PUSH  CX
    PUSH  DX
    MOV AH,15                                   ;读当前显示状态,放入AL
    INT 10H
    MOV AH,0                                    ;设置显示方式: AL=显示方式号; 起到清屏的作用
    INT 10H
    MOV CX,1                                    ;设置显示字符的个数
    MOV DX,0                                    ;设置行列为0
REAPT:
    MOV AH,2                                   ;设置光标位
    INT 10H


    MOV AL,SUN_COUNTS   
    SUB AL,10                          ;sun次数-10,放入al 
    MOV AH,KEY_COUNTS
    SUB AH,10                           ;key次数-10，放入ah

    AND AL,AH                               ;只要有一个达到10，结果为0
    CMP AL,0
    JE PASS1                                  ;次数达到要求则不再输出太阳


    MOV AL,0FH                                 ;读出太阳图形
    MOV AH,10                                  ;设置功能号，写字符
    INT 10H
    CALL DELAY                                 ;调用延时子程序
    SUB AL,AL
    MOV AH,10                                  ;清除原图形
    INT 10H
    INC DH
    ADD DL,2                                    
    CMP DH,25                                  ;未输出完1页以前，持续输出
    JNE REAPT
PASS1:
    POP DX                                    ;恢复现场
    POP CX
    POP BX
    POP AX
    RET
DISPl ENDP

DISP2 PROC NEAR
    PUSH CX                                    ;保护现场
    PUSH BX
    PUSH AX
    PUSH DX
    ;MOV BH, 00H                                
    MOV AH, 03H                                ;获取光标位置: BH=page number(default=0), DH=row number, DL=column number
    INT 10H
    MOV CX,7                                   ;显示字符串长度,包含了按键次数和空格,故需要七个(与数据段对应)
    MOV AH,13H                                 ;用AH=13H的INT 10H中断改变字体颜色
    MOV BL,4FH                                 ;certain color
    MOV BH,00H                                 ;Page number
    MOV AL,01H
    INT 10H                                   
    CALL DELAY
    POP DX
    POP AX                                    ;恢复现场
    POP BX
    POP CX
    RET
DISP2 ENDP

DELAY PROC NEAR		                          ;延时子程序
    PUSH CX
    PUSH DX
    MOV DX,120
DL500:
    MOV CX,2801
DL10ms:
    LOOP DL10ms
    DEC DX
    JNZ DL500
    POP DX
    POP CX
    RET
DELAY ENDP

;键盘中断子程序
KEYINTS PROC NEAR
    PUSH AX                                     ;保护现场
    PUSH BX
    PUSH DX
    PUSH SI

    STI                                         ;开中断

    IN AL,60H                                   ;读取键盘扫描码(ASCII存放在AL)
    MOV AH,AL                                   ;保护键盘扫描码               
    IN AL,61H                                   ;PB口的当前键盘ASCII值
    OR AL,80H                                   ;PB7置1,产生中断请求信号(脉冲信号)
    OUT 61H,AL
    AND AL,7FH                                  ;PB7置0,为下一次读取扫描码做准备
    OUT 61H,AL

    TEST AH,80H                                 ;根据扫描码判断按键为按下还是松开
    JNE PASS_KEY                                   ;不等于,为松开状态,则不计按键数,不输出OK,跳到PASS
    INC KEY_COUNTS                              ;按键数+1

    MOV AL,SUN_COUNTS   
    SUB AL,10                          ;sun次数-10,放入al 
    MOV AH,KEY_COUNTS
    SUB AH,10                           ;key次数-10，放入ah

    AND AL,AH                               ;只要有一个达到10，结果为0
    CMP AL,0

    ;CMP KEY_COUNTS,10                           ;保证按键达到十次后结束程序
    JA PASS_KEY                                     ;高于
    MOV AL, KEY_COUNTS
    ADD AL, 30H                                 ;将按键次数转换为ASCII码,以便输出
    CMP AL, 3AH
    JNE PRINT_OK

    MOV OK_PRINT, 31H                           ;按键次数为10的ASCII码,10是两位数,单独设置一下
    MOV OK_PRINT+1, 30H
    JMP CHGSI_OK
PRINT_OK:  
    MOV OK_PRINT, AL
CHGSI_OK:  
    LEA BP,OK_PRINT                             ;为DISP2中进行INT 10H中断作预处理
    MOV AX,SEG OK_PRINT                        
    MOV ES,AX
    CALL DISP_OK
PASS_KEY:
    MOV AL,20H                                 ;发出中断结束命令
    OUT 20H,AL
    POP SI                                     ;恢复现场
    POP DX
    POP BX
    POP AX
    ;STI                                        ;开中断
    IRET                                       ;中断返回
KEYINTS ENDP

DISP_OK PROC NEAR
    PUSH CX                                    ;保护现场
    PUSH BX
    PUSH AX
    PUSH DX

    ;MOV BH, 00H                                
    MOV AH, 03H                                ;获取光标位置: BH=page number(default=0), DH=row number, DL=column number
    INT 10H
    MOV CX,7                                   ;显示字符串长度,包含了按键次数和空格,故需要七个(与数据段对应)
    MOV AH,13H                                 ;用AH=13H的INT 10H中断改变字体颜色
    MOV BL,2CH                                 ;certain color
    MOV BH,00H                                 ;Page number
    MOV AL,01H
    INT 10H                                   
    CALL DELAY
    POP DX
    POP AX                                    ;恢复现场
    POP BX
    POP CX
    RET
DISP_OK ENDP

CODE ENDS
END START

;--------------------------------------------------------------------------;
; * @Author: Xue Yufei
; * @Date: 2022-05-09 23:57:38
; * @LastEditors: Xue Yufei
; * @LastEditTime: 2022-05-12 15:56:37
; * @FilePath: /exp10/exp.asm
; * @Description: Feel free to contact me at: yf_xue@seu.edu.cn
; * @Copyright (c) 2022 by Xue Yufei, All Rights Reserved. 
;--------------------------------------------------------------------------;

DATA SEGMENT
    KEY_COUNTS DB ?
    OK_PRINT DB "    OK!"           ;字符串中的空格为按键次数预留(两个数字+两个空格+OK!)
DATA ENDS

STACK SEGMENT                       ;为保护现场操作建立栈段空间
    DW 100 DUP(?)
STACK ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:DATA,SS:STACK
START:
    MOV AX,STACK
    MOV SS,AX
    MOV AX,DATA
    MOV DS,AX
    ;MOV ES,AX

    MOV AL,09H                              ;用中断类型21H的35H功能取中断向量保存
    MOV AH,35H
    INT 21H
    PUSH ES
    PUSH BX

    MOV KEY_COUNTS,00H                      ;按键次数置零

    MOV DX,OFFSET KEYINTS                   ;用中断类型21H的25H功能设置中断向量
    MOV AX,SEG KEYINTS
    MOV DS,AX
    MOV AL,09H
    MOV AH,25H
    INT 21H

    MOV AX,DATA                             ;恢复数据段地址
    MOV DS,AX

    STI                                     ;开中断

SUN:
    CALL DISP1                              ;输出太阳符号
    CMP KEY_COUNTS,10                       ;比较按键次数
    JB SUN                                  ;未到10,超过一页,退出了DISP1,继续输出太阳

    CLI                                     ;关中断

    POP DX                                  ;用中断类型21H的25H功能恢复中断向量,回顾line32 33
    POP DS
    MOV AL,09H
    MOV AH,25H
    INT 21H                            

    MOV AH,4CH                              ;返回DOS
    INT 21H

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
    JNE PASS                                    ;不等于,为松开状态,则不计按键数,不输出OK,跳到PASS
    INC KEY_COUNTS                              ;按键数+1
    CMP KEY_COUNTS,10                           ;保证按键达到十次后结束程序
    JA PASS                                     ;高于
    MOV AL, KEY_COUNTS
    ADD AL, 30H                                 ;将按键次数转换为ASCII码,以便输出
    CMP AL, 3AH
    JNE PRINT

    MOV OK_PRINT, 31H                           ;按键次数为10的ASCII码,10是两位数,单独设置一下
    MOV OK_PRINT+1, 30H
    JMP CHGSI
PRINT:  
    MOV OK_PRINT, AL
CHGSI:  
    LEA BP,OK_PRINT                             ;为DISP2中进行INT 10H中断作预处理
    MOV AX,SEG OK_PRINT                        
    MOV ES,AX
    CALL DISP2
PASS:
    MOV AL,20H                                 ;发出中断结束命令
    OUT 20H,AL
    POP SI                                     ;恢复现场
    POP DX
    POP BX
    POP AX
    ;STI                                        ;开中断
    IRET                                       ;中断返回
KEYINTS ENDP

DISP1 PROC NEAR
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

    CMP KEY_COUNTS,10                          ;比较按键次数
    JNB PASS1                                  ;大于等于,次数达到要求则不再输出太阳

    MOV AL,0FH                                 ;读出太阳图形

    MOV AH,10                                  ;设置功能号,写字符
    INT 10H

    CALL DELAY                                 ;调用延时子程序

    SUB AL,AL
    MOV AH,10                                  ;清除原图形
    INT 10H

    INC DH                                     ;设置下一次输出图形的位置
    ADD DL,2                                    
    CMP DH,25                                  ;未输出完1页(25行)以前,持续输出
    JNE REAPT

PASS1:
    POP DX                                    ;恢复现场
    POP CX
    POP BX
    POP AX
    RET
DISP1 ENDP

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

CODE ENDS
END START

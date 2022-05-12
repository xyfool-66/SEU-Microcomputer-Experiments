;调用dos功能实现 1s delay
DELAY PROC NEAR                 ;延时1秒子程序     
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
    CMP DH,BH                    ;比较两个时间的秒数，若相等则继续循环
    JE READ                      ;否则则经过了一秒
    POP BX
    POP DX
    POP AX
    POP CX
    RET
DELAY ENDP

;?s delay 参考程序
DELAY PROC
       PUSH   CX
       PUSH   AX
       MOV    CX,0FFFFH
GOON: 
       DEC    CX
       JNE    GOON
       POP    AX
       POP    CX
       RET
DELAY ENDP                ;过程性代码结束用 ENDP
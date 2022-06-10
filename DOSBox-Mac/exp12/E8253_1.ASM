;工作方式0
;(GATE=1 来一个上升沿 计数器-1 n=0计数结束 OUT由低变高保持 不重新计数)
;(GATE=0 停止计数 直到GATE上升沿 继续计数)
ioport equ 0d400h-0280h ;0d400h为实验箱的接口地址
                        ;应改为运行PORTR程序自动获取的那个接口地址（3100H）
io8253_ctrl equ ioport+283h
io8253_cnt0 equ ioport+280h

code segment
    assume cs:code
    start: 
    mov al,10h             ;设置8253通道0为工作方式0,二进制计数
    mov dx,io8253_ctrl
    out dx,al
    mov dx,io8253_cnt0         ;送计数初值为0FH 15次
    mov al,0fh
    out dx,al
    lll:   
    in al,dx               ;读计数初值
    call disp              ;调显示子程序
    push dx                 ;保护初值
    mov ah,06h
    mov dl,0ffh             ;表示按键次数输入到al
    int 21h
    pop dx
    jz lll
    last:
    mov ah,4ch              ;退出
    int 21h
    disp proc near               ;显示子程序
    push dx
    and al,0fh               ;首先取低四位
    mov dl,al
    cmp dl,9                 ;判断是否<=9
    jle num                  ;若是则为'0'-'9',ASCII码加30H
    add dl,7                 ;否则为'A'-'F',ASCII码加37H
    num: 
    add dl,30h
    mov ah,02h               ;将DL中的字符送到显示器显示，如果DL中为ctrl+break的ASCII码
    int 21h
    mov dl,0dh               ;加回车符
    int 21h
    mov dl,0ah               ;加换行符
    int 21h
    pop dx
    ret                      ;子程序返回
    disp endp
code ends
end start

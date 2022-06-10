;工作方式3
;(输出频率1Hz方波 需要级连计数器)
ioport equ 0d400h-0280h ;0d400h为实验箱的接口地址
                        ;应改为运行PORTR程序自动获取的那个接口地址(3100H)
io8253_cnt0 equ ioport+280h
io8253_cnt1 equ ioport+281h
io8253_ctrl equ ioport+283h

code segment
    assume cs:code
start:
    mov dx,io8253_ctrl          ;向8253写控制字
    mov al,36h                 ;使0通道为工作方式3
    out dx,al
    mov ax,1000               ;写入循环计数初值1000
    mov dx,io8253_cnt0
    out dx,al                 ;先写入低字节
    mov al,ah
    out dx,al                 ;后写入高字节
    mov dx,io8253_ctrl
    mov al,76h                ;设8253通道1工作方式3
    out dx,al
    mov ax,1000               ;写入循环计数初值1000
    mov dx,io8253_cnt1
    out dx,al                 ;先写低字节
    mov al,ah
    out dx,al                 ;后写高字节
    mov ah,4ch                ;程序退出
    int 21h
code ends
end start

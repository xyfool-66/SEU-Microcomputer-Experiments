;输出10	HZ的负脉冲序列
;(GATE=1 装入初值后开始计数 n=1 OUT=0 n=0 OUT=1 产生一个周期的负脉冲 连续装入n)
ioport equ 0d400h-0280h ;0d400h为实验箱的接口地址
                        ;应改为运行PORTR程序自动获取的那个接口地址(3100H)
io8253_cnt0 equ ioport+280h
io8253_cnt1 equ ioport+281h
io8253_ctrl equ ioport+283h
code segment
    assume cs:code
start:
    mov    dx,io8253_ctrl  ;向8253写控制字
    mov    al,36h          ;使0通道为工作方式3
    out    dx,al
    mov    ax,1000         ;写入循环计数初值1000
    mov    dx,io8253_cnt0
    out    dx,al           ;先写入低字节
    mov    al,ah
    out    dx,al           ;后写入高字节
    mov    dx,io8253_ctrl
    mov    al,74h          ;设8253通道1工作方式2
    out    dx,al
    mov    ax,100          ;写入循环计数初值100
    mov    dx,io8253_cnt1
    out    dx,al           ;先写低字节
    mov    al,ah
    out    dx,al           ;后写高字节
    mov    ah,4ch          ;程序退出
    int    21h
code ends
end start
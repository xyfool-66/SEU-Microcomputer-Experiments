DATA   SEGMENT
NUM    DB 58,25,45,73,64,43
SUM    DW ?    
DATA   ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV  AX,DATA
       MOV  DS,AX
       LEA  DX,NUM
       MOV  CX,6  
       SUB  AX,AX
NEXT:  ADD  AL,[BX]    
       ADC  AH,0
       INC  BX
       LOOP NEXT
       MOV  SUM,AX
CODE ENDS
END START



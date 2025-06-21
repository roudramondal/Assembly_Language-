.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 13,10,'BANGLADESH $'
 .CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09H
    LEA DX,MSG
    INT 21H
    
    MOV CX,0
    FOR_LOOP:
    CMP CX,4
    JGE EXIT
    
    INC CX
     JMP FOR_LOOP
 EXIT:
     MOV AH,4CH
     INT 21H
   MAIN ENDP
 END MAIN

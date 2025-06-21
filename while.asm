.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 13,10,'SWAPON CSE $'
 
 .CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,1
WHILE_LOOP:
    CMP CX,5
    JGE EXIT
    
    MOV AH,09H
    LEA DX,MSG
    INT 21H
    
    INC CX
   
    JMP WHILE_LOOP
 EXIT:
    MOV AH,4CH
    INT 21H 
 MAIN ENDP   
 END MAIN
    
   


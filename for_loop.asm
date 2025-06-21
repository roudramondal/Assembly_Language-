.MODEL SMALL
.STACK 100H
.DATA
M1 DB 10,13,'ROUDRA $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,0

    FOR_LOOP:
    CMP CX,4
    JGE EXIT

    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    INC CX
    JMP FOR_LOOP
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
 END MAIN

.MODEL SMALL
.STACK 100H

.DATA
MSG DB 'Code_R',0DH,0AH,'$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,0
  FOR_LOOP:
    CMP CX,8
    JGE EXIT
    
    MOV AH,9H
    LEA DX,MSG
    INT 21H
    INC CX
    JMP FOR_LOOP
    
  EXIT:
    MOV AH,4CH
    INT 21H
    
 MAIN ENDP
 END MAIN
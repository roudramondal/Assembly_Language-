.MODEL SMALL
.STACK 100H
.DATA
   MSG1 DB 'Enter a uppercase letter: $'
   MSG2 DB 13,10,'LOWER CASE: $'
   CHAR DB ?
 
 .CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CHAR,AL
    
    ADD CHAR,32
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV DL,CHAR
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
 MAIN ENDP
 END MAIN
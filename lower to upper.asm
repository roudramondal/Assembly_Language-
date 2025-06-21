  .MODEL SMALL ;Lowercase to uppercase
.STACK 100H

.DATA
    MSG1 DB 'Enter a lowercase letter: $'
    MSG2 DB  13, 10,'Uppercase letter is:$'  ; Newline before message
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
    
    SUB CHAR,32
    
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



.MODEL SMALL
.STACK 100H


.DATA
MSG1 DB 10,13,'ENTER = $'
MSG2 DB 10,13,'RESULT = $'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    
    MOV AH,9H
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL   
    
    
    SUB BL,30H
    SUB CL,30H
    
    ADD CL,BL
    
    ADD CL,30H
    
    MOV AH,9H
    LEA DX,MSG2
    INT 21H
    
    
    MOV AH,2
    MOV DL,CL
    INT 21H

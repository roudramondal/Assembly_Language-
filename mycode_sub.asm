.MODEL SMALL
.STACK 100H

.DATA 
M1 DB 10,13,'ENTER $'
M2 DB 10,13,'RESULT= $'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL 
    
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
                  
    ADD BL,30H
    ADD CL,30H
    
    SUB BL,CL
    
    ADD BL,30H
    
    
    MOV AH,9H
    LEA DX,M1
    INT 21H  
    
    MOV AH,2
    MOV DL,BL
    INT 21H
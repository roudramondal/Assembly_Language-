.MODEL SMALL
.STACK 100H

.DATA 
MSG1 DB "ENTER NUMBER1= $"
MSG2 DB 10,13, 'ENTER NUMBER2= $'
MSG3 DB 10,13, 'VALUE1= $'
MSG4 DB 10,13, 'VALUE2= $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,MSG1
    INT 21H 
    
    MOV AH,1H
    INT 21H
    
    MOV BL,AL
    
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H  
    
    MOV AH,9H
    LEA DX,MSG3
    INT 21H
    
    MOV AH,2H
    MOV DL,BL
    INT 21H   
    
    ;MOV AH,2H
   ; MOV DL,0DH 
    ;INT 21H
    
    ;MOV AH,2H
    ;MOV DL,0AH
    ;INT 21H
    
    MOV AH,9H
    LEA DX,MSG2
    INT 21H  
    
    
    MOV AH,1H
    INT 21H
    
    MOV CL,AL
    
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    
    MOV AH,9H
    LEA DX,MSG4
    INT 21H
    
    MOV AH,2H
    MOV DL,CL
    INT 21H
    

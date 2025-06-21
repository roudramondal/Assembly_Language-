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



; New approch 


.MODEL SMALL
.STACK 100H

.DATA

M1 DB 10,13,'ENTER NUMBER= $'
M2 DB 10,13,'ROUDRA $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1H
    INT 21H
    
    SUB AL,30H
    MOV BL,AL
    
    MOV CL,0
    WHILE_LOOP:
      
     CMP CL,BL
     JGE EXIT
     
     MOV AH,9H
     LEA DX,M2
     INT 21H
     
     INC CL
     JMP WHILE_LOOP
     
     EXIT:
     MOV AH,4CH
     INT 21H
     
     MAIN ENDP
   END MAIN
   





.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB "ENTER = $"
    MSG2 DB 10, 13, "2027$"
    

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX, MSG1
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    SUB AL, 30H
    MOV BL, AL
    
    MOV CL, 0
    
    DO_WHILE_LOOP:
        MOV AH, 09H
        LEA DX, MSG2
        INT 21H
         
        INC CL
        
        CMP CL, BL
        JGE EXIT_DO_WHILE_LOOP
        
        
        JMP DO_WHILE_LOOP
        
        
    EXIT_DO_WHILE_LOOP:
        MOV AH, 4CH
        INT 21H
        
 MAIN ENDP
END MAIN
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           
    PRINT 'ENTER THE FIRST NUMBER='
    MOV AH,01H ; value insert 
    INT 21H
    MOV BL,AL
    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H
    
     PRINT 'ENTER THE SECOND NUMBER='
     MOV AH,01H
     INT 21H
     MOV CL,AL
     
    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H
    
    CMP CL,BL     
    JE SHOW
    PRINT 'BOTH ARE NOT SAME'
    MOV AH,4CH
    INT 21H
    SHOW:
    PRINT 'BOTH ARE EQUAL'
    MOV AH,4CH
    INT 21H

   MAIN ENDP
END MAIN

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           
    PRINT 'ENTER THE FIRST NUMBER='
    MOV AH,01H
    INT 21H
    MOV BL,AL
    MOV DL,10
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H
    
     PRINT 'ENTER THE SECOND NUMBER=' ; enter the second value
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
    JLE SHOW
    PRINT 'FIRST IS LESS or EQUAL'
    MOV AH,4CH
    INT 21H
    SHOW:
    PRINT 'FIRST IS GREATER'
    MOV AH,4CH
    INT 21H

   MAIN ENDP
END MAIN


INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           
    PRINT 'ENTER THE FIRST ELEMENT='
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV DL,10
    MOV AH,2H
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H
    
     PRINT 'ENTER THE SECOND ELEMENT='
     MOV AH,1
     INT 21H
     MOV CL,AL
    
    MOV AH,2H 
    MOV DL,10
    INT 21H
    MOV AH,2H
    MOV DL,13
    INT 21H
    
    CMP CL,BL  
       
    JNE SHOW
    PRINT ' EQUAL'
    MOV AH,4CH
    INT 21H
    SHOW:
    PRINT  ' NOT EQUAL'
    MOV AH,4CH
    INT 21H

   MAIN ENDP
END MAIN

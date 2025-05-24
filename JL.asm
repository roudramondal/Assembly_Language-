INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           
    PRINT 'ENTER  FIRST ELEMENT='
    MOV AH,1
    INT 21H
    MOV BL,AL

    MOV DL,10     
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
    
    PRINT 'ENTER SECOND ELEMENT='
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV DL,10     
    MOV AH,02H
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H

    CMP BL, CL
    JL SHOW         
    PRINT 'FIRST IS GREATER'
    MOV AH,4CH
    INT 21H
      JMP EXIT
SHOW:
    PRINT 'FIRST IS LESS'
    MOV AH,4CH
    INT 21H  
    
     EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

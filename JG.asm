INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           
    PRINT 'ENTER THE FIRST Element ='
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,10     
    INT 21H  
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    PRINT 'ENTER THE SECOND Element ='
    MOV AH,1
    INT 21H
    MOV CL,AL
     
    MOV AH,2
    MOV DL,10     
    INT 21H 
    
    MOV AH,2
    MOV DL,13
    INT 21H

    CMP BL, CL
    JG SHOW         
    PRINT 'FIRST IS LESS'
    MOV AH,4CH
    INT 21H
      JMP EXIT
SHOW:
    PRINT 'FIRST IS GREATER'
    MOV AH,4CH
    INT 21H  
    
     EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

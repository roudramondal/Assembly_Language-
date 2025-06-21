.MODEL SMALL
.STACK 100H
.DATA
  MSG1 DB 'ENTER FIRST DIGIT:$'
  MSG2 DB 13,10,'ENTER SECOND DIGIT:$'
  RESULT_MSG DB 13,10,'MULTIPLICATION RESULT IS:$'
  RESULT DB ?
 .CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
   MOV AH,09H
   LEA DX,MSG1
   INT 21H
   
   MOV AH,01H
   INT 21H
   SUB AL,'0'  ; Convert ASCII to integer
   MOV BL,AL   ; Store first number
   
   MOV AH,09H
   LEA DX,MSG2
   INT 21H
   
   MOV AH,01H
   INT 21H
   SUB AL,'0'   ; Convert ASCII to integer
   MOV CL,AL    ; Store second number

   
   MOV AL,BL
   MUL CL       ; AL = BL * CL
   MOV RESULT,AL
   
   MOV AH,09H
   LEA DX,RESULT_MSG
   INT 21H
   
   MOV AL,RESULT
   ADD AL,'0'  ; Convert to ASCII
   MOV DL,AL
   MOV AH,02H
   INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
 END MAIN

.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 'ENTER FIRST DIGIT:$'
    MSG2 DB 13,10,'ENTER SECOND DIGIT:$'
    MSG3 DB 13,10,'RESULT (QUOTIENT) IS: $'
    RESULT DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Prompt for first digit
    MOV AH, 9
    LEA DX, MSG1
    INT 21H

    ; Read first digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'     ; Convert ASCII to number
    MOV BL, AL      ; Store in BL

    ; Prompt for second digit
    MOV AH, 9
    LEA DX, MSG2
    INT 21H

    ; Read second digit
    MOV AH, 1
    INT 21H
    SUB AL, '0'
    MOV CL, AL      ; Store in CL

    ; Move BL to AL for division, clear AH
    MOV AL, BL
    MOV AH, 0
    DIV CL          ; AL = BL / CL, AH = remainder

    ; Store quotient in RESULT
    MOV RESULT, AL

    ; Show result message
    MOV AH, 9
    LEA DX, MSG3
    INT 21H

    ; Convert result to ASCII and print
    MOV AL, RESULT
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN

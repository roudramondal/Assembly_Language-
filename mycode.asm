.model small 
.stack 100h

.code 
main proc
    mov ah,2
    mov dl,'C'    ; display  dl function
    int 21h  
    
    int 21h
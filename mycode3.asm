.model small
.stack 100h

.data 
msg1 db "Enter a number : $"

.code 
main proc    
    mov ah, @data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    
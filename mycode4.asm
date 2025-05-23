.model small
.stack 100h 

.data
msg1 db 10,13,'enter value= $'
msg2 db 10,13,'result = $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al
    
    add cl,bl
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
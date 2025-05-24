.model small
.stack 100h

.data 
msg1 db 10,13,'Enter the number = $'
msg2 db 10,13,'Result = $'

.code 
main proc 
    mov ax,@data 
    mov ds,ax
    
    mov ah,9H
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,AL
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al
    
    SUB BL, 30H
    SUB CL, 30H  
    
    add cl,bl
    
    ADD CL, 30H
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2  
    mov dl,cl 
    int 21H

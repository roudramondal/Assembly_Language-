.model small
.stack 100h

.code 
main proc
    mov ah,1 ;1 mean taking input  from user   
    int 21h ; Al store all value and  also we can input 1 to 9
               
    
    mov bl,al     ; store value in al
    
    mov ah,2
    mov dh,0dh ;carriage return 
    int 21h
               
    mov ah,2    ; new line print 
    mov dl,0ah
    int 21h
    
    mov ah,2  ;2 mean displa output           
    mov dl,al    ; DL = AL = input
    int 21h

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, a 
mov di, si
inc di 
mov cl, 6

mov al, [si] 
    
comp:   
    mov bl, [di]
    cmp bl, al
    jb look
    inc di 
    loop comp
jmp end 
    
look:
    mov al, [di]
    inc di
    loop comp
        
end:
ret

a db 1,2,4,2,3,7,6



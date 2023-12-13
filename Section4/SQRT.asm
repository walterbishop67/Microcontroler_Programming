
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, number  
mov bl, 2
div bl
mov cl, al

mainloop:
     mov al, number
     div cl
     cmp al, cl
     je iss 
     mov dl, 0
     mov ah, 0 
     loop mainloop 
jmp nsqrt     

iss:
   cmp ah, 0
   je sqrt
   jmp nsqrt   


sqrt:
mov ah, 2
mov dl , '1'
int 21h
int 20h

nsqrt:
mov ah, 2
mov dl , '0'
int 21h 
int 20h

    

ret
number db 4





; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dh, n     
mov di, 2000h   

mov si, 01h
mov bx, 0

myloop:
    mov [di], si  
    mov bp, si


mov cx, 8 
print_myloop2:
    mov ah, 2
    mov dl, '0'  
    test bp, 10000000b
    jz printzero2
    mov dl, '1' 
                 
printzero2:
    int 21h
    shl bp, 1
    loop print_myloop2    
    
mov ah, 2
mov dl, 32
int 21h
add bx, si
inc si
inc di
dec dh   
jz end
loop myloop
    end:mov [di], bx
mov cx, 16
print_loop:
    mov ah, 2
    mov dl, '0'  
    test bx, 1000000000000000b   
    jz print_zero
    mov dl, '1'
print_zero:
    int 21h
    shl bx, 1
    loop print_loop
         
    
ret  
n db 5





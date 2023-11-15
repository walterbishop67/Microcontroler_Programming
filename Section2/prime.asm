
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, n

mov bx, 2
mov dx, 0

mov cx, n
dec cx
print_loop: 
    cmp ax, 1
    je print_zero   ; if the number is one it goes to prin_zero method
    cmp bx, n
    jz print_one
    mov ax, n
    div bx 
    cmp dx, 0 
    jz print_zero 
    mov dx,0
    inc bx 
    loop print_loop

 
print_zero:   
    mov ah, 2
    mov dl, '0'
    int 21h 
    int 20h
    
print_one:
    mov ah, 2
    mov dl, '1'
    int 21h
    int 20h
        
           
ret
n dw 1





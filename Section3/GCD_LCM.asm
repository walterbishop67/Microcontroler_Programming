
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, num1
mov bx, num2 

mov ax, bx
jae abuyuk

 
swap:
  mov di, ax
  mov ax, bx
  mov bx, di  
 
 
abuyuk:
    mov cx, bx
    loop1: 
        mov ax, num1
        div cx
        cmp dx, 0 
        je abolundu 
        mov dx, 0
        loop loop1


abolundu:
   mov ax, bx
   div cx 
   cmp dx, 0 
   mov gcd,cx 
   je PRINT_LOOP  
   loop loop1

       
   
PRINT_LOOP:
    MOV AH,2 
    mov bp, cx 
    mov cx, 8 
    loopprint:  
    mov DL,'0'
    TEST BP,10000000b
    JZ PRINT_ZERO
    MOV DL,'1'
    PRINT_ZERO:
        INT 21h
        SHL BP,1
        LOOP loopprint
mov dl,'b'
int 21h 

LCM1:   
    mov ax, num1
    mov bx, num2
    mul bx 
    div gcd  
    mov lcm, ax
    
    
    

ret

num1 dw 14
num2 dw 21
gcd dw 0 
lcm dw 0




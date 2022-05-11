.model small 
.data
password db "COAACP"
len equ $-password
m1 db 10,13 , "Enter your password:","$"
m2 db 10,13 , "Correct Password!, Welcome","$"
m3 db 10,13 , "Invalid Password!, Please try again","$" 
inst db 10 dup(10)

.code
 
start:
mov ax,ds
mov ds,ax
lea dx,m1
mov ah,09h
int 21h
mov si,00 
up1:
mov ah,08h 
int 21h
cmp al,0dh
je down
mov [inst+si],al 
mov dl,"*" 
mov ah,02h
int 21h
inc si
jmp up1
down:
mov bx,00
mov cx,len
check:
mov al,[inst+bx]
mov dl,[password+bx]
cmp al,dl
jne fail
inc bx
loop check 
lea dx,m2
mov ah,09h
int 21h
mov ah,08h
int 21h
jmp finish
fail:
lea dx,m3
mov ah,09h
int 21h
mov ah,08h
int 21h
finish:
mov ax,4c00h
int 21h

end



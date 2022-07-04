.model small
.stack 100h

.data
password db 'coaa'
len equ ($-password)
msg1 db 10,13,'Enter your password: $'
msg2 db 10,13,'Correct Password,Welcome!!$'
msg3 db 10,13,'Incorrect Password, Please try again!$'
new db 10,13,'$'
inst db 10 dup(0)

.code
                        
start:
mov ax,@data
mov ds,ax
lea dx,msg1
mov ah,09h
int 21h
mov si,00

up1:
mov ah,08h
int 21h
cmp al,0dh
je down
mov [inst+si],al
mov dl,'*'
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

correct:
lea dx,msg2
mov ah,09h
int 21h
jmp finish

fail:
lea dx,msg3
mov ah,09h
int 21h

finish:
mov ah,4ch
int 21h


end start
end

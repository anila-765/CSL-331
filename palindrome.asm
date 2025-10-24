.model small
.data
msg1 db 10,13,"Enter the string $"
msg2 db 10,13,"Palindrome $"
msg3 db 10,13,"Not Palindrome $"
arr db 30 dup(?)

.code
main:

mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,09h
int 21h

mov si,00h

read:

mov ah,01h
int 21h

cmp al,0dh
je l2

mov arr[si],al
inc si
jmp read

l2:
dec si
mov di,si
mov si,00h

check:
cmp si,di
jge palindrome
mov al,arr[si]
mov bl,arr[di]
cmp al,bl
jne not_palindrome
inc si
dec di
jmp check

palindrome:
lea dx,msg2
mov ah,09h
int 21h
jmp exit_pg

not_palindrome:
lea dx,msg3
mov ah,09h
int 21h
jmp exit_pg

exit_pg:
mov ah,4ch
int 21h

end main

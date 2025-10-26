.model small
.data 
m1 db 10,13,"Enter a number $"
m2 db 10,13,"Prime number $"
m3 db 10,13,"Not Prime number $"

.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,30h

cmp al,1
je not_prime

mov dl,al

mov cl,2



check:

cmp cl,al
jge prime

mov ah,0

div cl
cmp ah,0
je not_prime

mov al,dl
inc cl

jmp check

prime:

lea dx,m2
mov ah,09h
int 21h

jmp exit

not_prime:
lea dx,m3
mov ah,09h
int 21h

exit:
mov ah,4ch
int 21h

end

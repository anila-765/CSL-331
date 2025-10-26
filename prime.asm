.model small
.data
m1 db 10,13,"Enter a number $"
m2 db 10,13,"Prime $"
m3 db 10,13,"not prime $"

.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,30h

mov bl,al


mov ah,01h
int 21h

sub al,30h

mov dl,al
mov al,bl

mov cl,10; ax=al*10
ah,0
mul cl

add al,dl;al=al+bl

mov ah,0

mov bx,ax

cmp ax,1
je not_prime
mov cx,2

check:
cmp cx,bx
jge prime

mov dx,0

div cx
cmp dx,0
je not_prime
inc cx

mov ax,bx
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





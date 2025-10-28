.model small
.data
a db ?
b db ?
m1 db 10,13,"Enter first number $"
m2 db 10,13,"Enter second number $"
m3 db 10,13,"Result $"
m4 db 10,13,"division by zero not posible $"
sum db ?
diff db ?

.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,30h

mov a,al

lea dx,m2
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,30h

mov b,al

add al,a

mov sum,al

mov al,b
mov bl,a

sub bl,al

mov diff,bl

mov al,sum
mov bl,diff

cmp bl,0
je special

mov ah,0
div bl

display:
lea dx,m3
mov ah,09h
int 21h

mov ah,0

add al,30h
mov dl,al
mov ah,02h
int 21h

jmp exit

special:
lea dx,m4
mov ah,09h
int 21h

exit:

mov ah,4ch
int 21h

end





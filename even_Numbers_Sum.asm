.model small
.data
n dw ?

arr db 30 dup(?)

m1 db 10,13,"Enter array :$"
m2 db 10,13,"Sum of even numbers :$"


.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov si,0
mov bl,0

read:
mov ah,01h
int 21h

cmp al,0dh
je temp

sub al,30h
mov arr[si],al
inc si
jmp read

temp:
mov n,si
dec si
mov di,si

mov cx,n
mov si,0

find:
mov al,arr[si]
test al,1
jnz not_even

add bl,al
;mov bl,al
inc si
loop find

not_even:
cmp cx,0
je disp
inc si
jmp find


disp:
lea dx,m2
mov ah,09h
int 21h

mov ah,0
mov al,bl
mov cl,10
div cl

mov bl,ah
add bl,30h
add al,30h

mov dl,al
mov ah,02h
int 21h

mov dl,bl
mov ah,02h
int 21h


mov ah,4ch
int 21h

end





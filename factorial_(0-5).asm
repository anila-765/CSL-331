.model small
 .data
 a db ?
 m1 db 10,13,"Enter a number $"
 m2 db 10,13,"FActorial $"

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
 cmp al,0
 je res

 mov cl,a
 mov bl,1
 mov ax,1

 l:
 cmp bl,cl
 jg disp

 mul bl
 inc bl
 jmp l

 res:
 lea dx,m2
 mov ah,09h
 int 21h
 inc al
 add al,30h
 mov dl,al
 mov ah,02h
 int 21h
 jmp exit

 disp:
 lea dx,m2
 mov ah,09h
 int 21h

 mov ah,0 
 mov cl,100
 div cl
 mov cl,ah
 
cmp al,0
je ten

add al,30h
mov dl,al
mov ah,02h
int 21h

ten:
mov al,cl
mov ah,0
mov bl,10
div bl

 mov bl,ah

cmp al,0
je one
  add al,30h
 mov dl,al
 mov ah,02h
 int 21h

one:
add bl,30h

 mov dl,bl
 mov ah,02h
 int 21h
 jmp exit
 exit:
 mov ah,4ch
 int 21h
 end

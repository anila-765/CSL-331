.model small
 .data
 a db ?
 b db ?
 m1 db 10,13,"Enter 1st number $"
 m2 db 10,13,"Enter 2nd number $"
 m3 db 10,13,"Quotient $"
 m4 db 10,13,"Remainder $"
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
 div_1:
 mov bl,b
 mov al,a
 mov cl,0
 l:
 cmp al,bl
 jl disp
 inc cl
 sub al,bl
 jmp l
 disp:
lea dx,m3
 mov ah,09h
 int 21h
 add al,30h
 mov bl,cl
 add bl,30h
 ;mov res,bl
 mov dl,bl
 mov ah,02h
 int 21h
 lea dx,m4
 mov ah,09h
 int 21h
 mov dl,al
 mov ah,02h
 int 21h
 mov ah,4ch
 int 21h
 end

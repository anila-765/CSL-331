.model small
 .data
 a db ?
 res db ?
 b db ?
 m1 db 10,13,"Enter 1st num $"
 m2 db,10,13,"Enter 2nd num $"
 m3 db 10,13,"Result $"
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
 mov al,00h
 mov bl,a
 mov cx,b
 repeat:
 add al,bl
 loop repeat
 mov res,al
 jmp display
 display:
lea dx,m3
 mov ah,09h
 int 21h
 mov ah,0
 mov al,res
 mov cl,10
 div cl
 mov bl,ah
 cmp al,0
 je ten
 add al,30h
 mov dl,al
 mov ah,02h
 int 21h
 ten:
 add bl,30h
 mov dl,bl
 mov ah,02h
 int 21h
 jmp exit
 exit:
 mov ah,4ch
 int 21h
 end

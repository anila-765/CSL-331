.model small
.data
n dw ?
arr db 50 dup(?)
drr db 40 dup(?)
m dw ?
m1 db 10,13,"Enter 1st string $"
m3 db 10,13,"Enter 2nd string $"
m2 db 10,13,"result = $"



.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov si,0
read1:
mov ah,01h
int 21h

cmp al,0dh
je done

mov arr[si],al
inc si
jmp read1



done:
mov n,si
mov di,si
mov si,0

lea dx,m3
mov ah,09h
int 21h

read2:
mov ah,01h
int 21h

cmp al,0dh
je done2

mov drr[si],al
inc si
jmp read2

done2:
mov m,si
mov cx,m
mov si,0


add1:
mov al,drr[si]
mov arr[di],al
inc si
inc di
loop add1

mov n,di
mov cx,n
mov si,0

lea dx,m2
mov ah,09h
int 21h

display:

mov al,arr[si]
inc si
mov dl,al
mov ah,02h
int 21h

loop display


exit:
mov ah,4ch
int 21h

end








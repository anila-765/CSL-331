.model small
.data
n dw ?
arr db 30 dup(?)
m1 db 10,13,"Enter te string $"
m2 db 10,13,"count= $"


.code
mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov si,0
read:
mov ah,01h
int 21h

cmp al,0dh
je done

mov arr[si],al
inc si
jmp read

done:
mov n,si
mov cx,n
mov si,0
mov bl,1

check:

mov al,arr[si]
inc si

cmp al,' '
je yes

loop check

cmp cx,0
je nope

yes:
inc bl
jmp check

jmp exit

nope:
lea dx,m2
mov ah,09h
int 21h

add bl,30h
mov dl,bl
mov ah,02h
int 21h


exit:
mov ah,4ch
int 21h

end








.model small
.data

arr db 30 dup(?)
m1 db 10,13,"Enter a string $"
m2 db 10,13,"Enter the letter to find the ccurence $"
m3 db 10,13,"Occurence of the character $"

.code

mov ax,@data
mov ds,ax

lea dx,m1
mov ah,09h
int 21h

mov si,0

read:
cmp al,0dh
je done

mov ah,01h
int 21h

mov arr[si],al
inc si

jmp read

done:
lea dx,m2
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bl,al

mov di,si
mov si,0
mov cl,0

find:
cmp si,di
jge display

mov al,arr[si]

cmp al,bl
je yes

inc si
jmp find


yes:
inc cl
inc si
jmp find

display:
lea dx,m3
mov ah,09h
int 21h

mov dl,bl
mov ah,02h
int 21h

mov dl,'='
mov ah,02h
int 21h

mov al,cl
add al,30h
mov dl,al
mov ah,02h
int 21h

mov ah,4ch
int 21h

end




.model small

.data
n dw ?
arr db 30 dup(?)
m1 db 10,13,"Enter the array $"
m3 db 10,13,"second largest $"

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
je start

sub al,30h
mov arr[si],al
inc si
jmp read

start:
mov n,si
dec si
mov di,si

go:
cmp di,0
je sorted

mov si,0

compare:
cmp si,di
jge nextloop

mov al,arr[si]
mov bl,arr[si+1]
cmp al,bl
jle next

mov arr[si],bl
mov arr[si+1],al
inc si

jmp compare

next:
inc si
jmp compare

nextloop:
dec di
jmp go

sorted:
lea dx,m3
mov ah,09h
int 21h

mov si,n
dec si
dec si

mov al,arr[si]
add al,30h
mov dl,al
mov ah,02h
int 21h

mov ah,4ch
int 21h
end


;suma de dos numerospor teclado
;Paul Alexander Pasaca Coronel


section .data 
resultado db 'La suma es:',10
leng_resultado equ $-resultado

new_line db 'La suma es:',10
leng_new equ $-resultado

section .bss
    resta resb 1

section .text
    global _start
_start:
;-----------imprime mensaje----------------
mov eax,6
mov ebx,2
sub eax, ebx
add eax,0

mov[resta], eax

mov eax,4
mov ebx,1
mov eax,resultado
mov edx,leng_resultado
int 80h


mov eax,4
mov ebx,1
mov eax,resta
mov edx,1
int 80h

mov eax,1
int 80h

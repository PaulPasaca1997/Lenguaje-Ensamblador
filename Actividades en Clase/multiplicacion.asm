
;Multiplicacion de dos numeros estaticos
;Paul Alexander Pasaca Coronel


section .data 
resultado db "La multiplicacion es:",10
leng_resultado equ $-resultado

section .bss
    multi resb 1

section .text
    global _start
_start:


mov al,3
mov bl,2
mul ebx
add al,'0'

mov[multi], al

mov eax,4
mov ebx,1
mov eax,resultado
mov edx,leng_resultado
int 80h

mov eax, 4
mov ebx,1
mov eax,multi
mov edx,1


mov eax,1
int 80h

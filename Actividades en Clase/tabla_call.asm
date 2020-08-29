;Paul Alexander Pasaca Coronel
;Sexto Ciclo

section .data
    msj1 db " * "
    lenmsj1 equ $-msj1
    msj2 db " = "
    lenmsj2 equ $-msj2
    nlinea db 10,10,0
	lnlinea equ $-nlinea
section .bss
    a resb 2
    b resb 2
    c resb 2
section .text
    global _start
_start:
    mov al, 3
    add al, '0'
    mov [a], al
    ;inicio de tabla
    mov cx, 1

ciclo:
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo

salir:
    mov eax,1
    int 80h



imprimir0:
        mov eax, 4
        mov ebx, 1
        mov ecx, a
        mov edx, 1
        int 80h
        ret


imprimir1:
        mov eax, 4
        mov ebx, 1
        mov ecx, msj1
        mov edx, lenmsj1
        int 80h
        ret

imprimir2:
        mov eax, 4
        mov ebx, 1
        mov ecx, b
        mov edx, 1
        int 80h
        ret

imprimir3:
        mov eax, 4
        mov ebx, 1
        mov ecx, msj2
        mov edx, lenmsj2
        int 80h
        ret

imprimir4:
        mov eax, 4
        mov ebx, 1
        mov ecx, c
        mov edx, 1
        int 80h
        ret  


imprimir5:
        mov eax, 4
        mov ebx, 1
        mov ecx, nlinea
        mov edx, 1
        int 80h
        ret    

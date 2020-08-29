;Paul Alexander Pasaca Coronel
;Sexto Ciclo

%macro imprimir 2
        mov eax, 4
        mov ebx, 1
        mov ecx, %1
        mov edx, %2
        int 80h
%endmacro

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
    
   
    ;inicio de tabla
    mov cx, 1

ciclo:
    mov al, 1
    add al, '0'
    mov [a], al
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo1

ciclo1:
    mov al, 2
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo1
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo2


ciclo2:
    mov al, 3
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo2
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo3

ciclo3:
    mov al, 4
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo3
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo4

ciclo4:
    mov al, 5
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo4
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo5

ciclo5:
    mov al, 6
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo5
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo6

ciclo6:
    mov al, 7
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo6
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo7

ciclo7:
    mov al, 8
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo7
    imprimir nlinea,1
    mov cx, 1
    jmp ciclo8

ciclo8:
    mov al, 9
    add al, '0'
    mov [a], al
    
    push cx
    
    mov ax, [a]
    sub ax, '0'
    mul cx
    add ax, '0'
    mov [c], ax

    add cx, '0'
    mov [b], cx
    imprimir a,1; imprime numero
    imprimir msj1, lenmsj1; imprime *
    imprimir b,1;imprime el numero a incrementar
    imprimir msj2, lenmsj2
    imprimir c, 1

    imprimir nlinea,1
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo8
    imprimir nlinea,1
    mov cx, 1
    jmp salir





salir:
    mov eax,1
    int 80h

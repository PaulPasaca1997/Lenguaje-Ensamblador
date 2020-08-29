;PAUL ALEXANDER PASACA CORONEL
;5 DE AGOSTO DEL 2020

;%macro imprimir 2
 ;       mov eax, 4
  ;      mov ebx, 1
   ;     mov ecx, %1
    ;    mov edx, %2
     ;   int 80h
;%endmacro

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
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo1
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo2
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo3
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo4
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo5
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo6
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo7
    call imprimir5
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
    call imprimir0
    call imprimir1
    call imprimir2
    call imprimir3
    call imprimir4

    call imprimir5
    pop cx
    inc cx
    cmp cx, 10
    jnz ciclo8
    call imprimir5
    mov cx, 1
    jmp salir


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



salir:
    mov eax,1
    int 80h
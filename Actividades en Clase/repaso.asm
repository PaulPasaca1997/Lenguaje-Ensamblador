%macro escribir 2
  mov eax, 4
  mov ebx, 1
  mov ecx, %1
  mov edx, %2
  int 80h
%endmacro

%macro leer 2
  mov eax, 3
  mov ebx, 0
  mov ecx, %1
  mov edx, %2
  int 80h
%endmacro

section .data
    
   

	resulta db "/home/paul/Escritorio/Ensamblador/resultados.txt"

    msj1 db 'El caracter '
    len1 equ $ -msj1

    msj2 db ' se repite '
    len2 equ $ -msj2

    msj3 db ' veces', 0xa
    len3 equ $ -msj3
	
	datos db "DATOS DEL TXT",0xa
	len_datos equ $-datos

    arreglo db 0,0,0,0,0
    len_arreglo equ $ -arreglo

    espacio db 10
	len_espacio equ $-espacio

	insert db "Ingresa exactamente 5 caracteres:", 10
	len_insert equ $-insert

	archivo db "/home/paul/Escritorio/Ensamblador/datos.txt"




section .bss
    id_arreglo resb 1
    value resb 1
    cont resb 1
    sum resb 2

    texto resb 30
	idarchivo resd 1

section .text
    global _start


leer1:
	mov eax, 3
	mov ebx, 0
	mov ecx, texto
	mov edx, 10
	int 80h
	ret

_start:

insertar:

mov eax, 8 		;servicio para crear archivos, trabajar con archivos
	mov ebx, archivo	; dirección del archivo
	mov ecx, 1		; MODO DE ACCESO
					; O-RDONLY 0: El archivo se abre sólo para leer
					; O-WRONLY 1: El archivo se abre para escritura
					; O-RDWR 2: El archivo se abre para escritura y lectura
					; O-CREATE 256: Crea el archivo en caso que no exist
					; O-APPEND 2000h: El archivo se abro solo par escritura al final
	mov edx, 777h
	int 80h
	
	test eax, eax		; instrucción de comparación realiza la operación lógica “Y” de dos operandos, 
				; pero NO afecta a ninguno de ellos, SÓLO afecta al registro de estado. Admite 
				; todos los tipos de direccionamiento excepto los dos operandos en memoria
					; TEST reg, reg
					; TEST reg, mem
					; TEST mem, reg
					; TEST reg, inmediato
					; TEST mem, inmediato 
	
	jz salir		; se ejecuta cuando existen errores en el archivo
	
	mov dword [idarchivo], eax
	escribir insert, len_insert
	
	
	call leer1
	
	; ************************ escritura en el archivo *****************************
	mov eax, 4
	mov ebx, [idarchivo]
	mov ecx, texto
	mov edx, 20
	int 0x80

	jmp lectura


lectura:
    escribir datos, len_datos
    
    mov eax, 5 
    mov ebx, archivo
    mov ecx, 0
    mov edx, 0
    int 80h

    test eax, eax
    jz salir
    mov dword[id_arreglo], eax
    
    mov eax, 3
    mov ebx, [id_arreglo]
    mov ecx, arreglo
    mov edx, len_arreglo ;
    int 80h

    escribir arreglo,len_arreglo
    escribir espacio, len_espacio

    mov eax, 6
    mov ebx, [id_arreglo]
    mov ecx, 0
    mov edx, 0x1FF
    int 80h

    escribir espacio, len_espacio


Comprobar_rep:
    mov esi, arreglo
    mov edi, 0

    mov eax, [esi]
    mov [value], eax

    mov bl, 0
    mov [cont], bl
    
    mov cl, 0

    mov dl, 0

comprobar_fin:
    mov al, [value]
    mov bl, [esi]

    call comparar_rep
    
    inc esi
    inc edi
    cmp edi, len_arreglo
    jb comprobar_fin
    jmp verificar
    
comparar_rep:
    cmp al, bl
    je contador
    ret

contador:
    inc cl
    ret


imprimir_repet:
    add cl, '0'
    mov [cont], cl

    escribir msj1, len1
    escribir value, 1
    escribir msj2, len2
    escribir cont, 1
    escribir msj3, len3
    ret

    ;jmp crear

sumar_arreglo:
    mov esi, 0
    mov ecx, len_arreglo
    mov bl, 0
    clc  






verificar:
    inc dl
    mov al, dl
    mov esi, arreglo
    mov edi, 0
    call acceder_posicion
    push edx
    call imprimir_repet
    pop edx
    mov al, [esi]
    mov [value], al

    mov cl, 0

    cmp dl, len_arreglo
    jb comprobar_fin
    jmp sumar_arreglo

acceder_posicion:
    inc esi
    inc edi
    dec al
    cmp al, 0
    jg acceder_posicion
    ret



salir:
    escribir espacio, len_espacio
    mov eax, 1
    int 80h
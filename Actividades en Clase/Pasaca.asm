

;Paul Alexander Pasaca Coronel
;24 de Agosto de 2020


;-----------------------------------Macro para imprimir------------------------
%macro imprimir 2 
	mov eax, 4
	mov ebx, 1
	mov ecx, %1
	mov edx, %2
	int 80H
%endmacro

;-----------------------------------Macro para leer------------------------

%macro leer 2 ;Macro para leer
  mov eax, 3
  mov ebx, 2
  mov ecx, %1
  mov edx, %2
  int 80H
%endmacro

;-----------------------------------Seccion de Datos-----------------------


section .data
	num db "Ingrese número a verificar:"		;Ingresar numero
	leng1 equ $-num 							;Tamaño de mensaje

	es_primo db "¡Es primo!"			;Presentar Mensaje si es primo
	leng_es_primo equ $- es_primo 		;Tamaño de mensaje
	
	no_es_primo db "¡No es primo!"		;Presentar Mensaje si no es primo
	leng_no_es_primo equ $- no_es_primo ;Tamaño de mensaje
	
	salto db 10
	len_salto equ $-salto

section .bss
	a resb 1		;Reservar un espacio para a
	b resb 1		;Reservar un espacio para b
	;aux resb 1


section .text
	
	global _start

_start:			;Inicio de programa
	 
	mov al, 2		
	mov [b], al
	
	imprimir num, leng1 		;Imprimir mensaje
	leer a,1					;Leer Mensaje

	mov al,[a]
	sub al,'0'
	cmp al,4

	jc Es_Primo 		;Salta si hay acarreo
	
	jmp Comparacion 	;Salto incondicional a comparacion
	
;-----------------------------------Comparacion del numero--------------------------------


	Comparacion:			; Ciclo para verificar si es primo 

		mov ah, 0
		mov al,[a]
		sub al, '0'
		
		mov cl, [b]
		
		div cl
		cmp ah, 0
		jz No_Primo 		;Salto a no primo 
		
		
		mov cl, [b]
		
		mov al,[a]
		sub al, '0'
		dec al
		inc cl
		mov [b], cl
		cmp cl, al

		jz Es_Primo 		;Salto a es primo
		jmp Comparacion		;Salto incondicional a comparacion

;-----------------------------------Mensaje no es Primo------------------------


	No_Primo:										;Imprime si no es primo
		imprimir no_es_primo, leng_no_es_primo		;Imprime mensaje
		imprimir salto, len_salto					;Imprime salto
		jmp Salir
				
;-----------------------------------Mensaje es Primo------------------------
		
	Es_Primo:										;Imprime si es primo
		imprimir es_primo, leng_es_primo        	;Imprime mensaje
		imprimir salto, len_salto					;Imprime salto
		jmp Salir
		

;-----------------------------------Salir ---------------------------
		
	Salir:
		mov eax,1
		mov ebx,0
		int 80h  									;Interrupcion de Linux

section .data
mensaje db "Mi  primera vez con NASM"
len_mensaje equ $-mensaje 

;section .bss

section .text
	global _start 
_start: 

	;IMPRIME
	mov eax, 4		;tipo de subrutina, operacion, escritura
	mov ebx, 1		;tipo de estandar, por teclado 
	mov ecx, mensaje	;se almacena el mensaje	
	mov edx, len_mensaje 	;se almacena la referencia a imprimir por # de caracteres
	int 80H			;interrupcion de linux 

	mov eax,1		;salida del programa
	mov ebx,0		;si el retorno es 0 (200 en la web) ok
	int 80H

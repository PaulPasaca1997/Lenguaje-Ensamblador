;Paul Alexander Pasaca Coronel
;Sexto Ciclo

;Suma de dos numeros estaticos


section .data
	resultado db "La suma es:",10
	len_resultado equ $-resultado

	line db " ",10
	len_line equ $-line 
	 

section .bss
	suma resb 1

section .text
	global _start 
_start: 

	;IMPRIME
	mov eax, 6		
	mov ebx, 2		
	add eax,ebx		; eax = eax + ebx
	add eax,'0' 	
	
	mov[suma],eax

	;IMPRIME
	mov eax, 4		;tipo de subrutina, operacion, escritura
	mov ebx, 1		;tipo de estandar, por teclado 
	mov ecx, resultado	;se almacena el mensaje	
	mov edx, len_resultado 	;se almacena la referencia a imprimir por # de 
	int 80H
	
	mov eax, 4		
	mov ebx, 1		
	mov ecx, suma		
	mov edx, 1	 	
	int 80H

	mov eax, 4		
	mov ebx, 1		
	mov ecx, line 
	mov edx, len_line 	 	
	int 80H


	mov eax,1		;salida del programa
	mov ebx,0		;si el retorno es 0 (200 en la web) ok
	int 80H

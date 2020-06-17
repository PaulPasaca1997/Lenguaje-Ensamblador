
;Suma de dos numeros ingresados por teclado


section .data
	resultado db "La suma es: "
	len_resultado equ $-resultado

	line db " "
	len_line equ $-line 
	 
	numero1 db "Ingrese primer numero:"
	len_numero1 equ $-numero1 

	numero2 db "Ingrese segundo numero:"
	len_numero2 equ $-numero2

section .bss
	
	a resb 1
	b resb 1
	suma resb 1

section .text
	global _start 
_start: 

	;IMPRIME MENSAJE 1 
	mov eax, 4		
	mov ebx, 1		
	mov ecx, numero1
	mov edx, len_numero1 
	int 80H	
	
	;LEE MENSAJE 1 
	mov eax, 3		
	mov ebx, 2		
	mov ecx, a
	mov edx, 2 
	int 80H	



	;IMPRIME MENSAJE 2 
	mov eax, 4		
	mov ebx, 1		
	mov ecx, numero2
	mov edx, len_numero2 
	int 80H	
	
	;LEE MENSAJE 2
	mov eax, 3		
	mov ebx, 2		
	mov ecx, b
	mov edx, 2 
	int 80H	


	mov ax,[a]
	mov bx,[b]
	sub ax,'0' 	;=> valores convertidos en digitos
	sub bx,'0'	;=> valores convertidos en digitos
	add ax, bx
	add ax, '0'	;=> valores convertidos a cadena
	
	mov [suma],ax
	
	mov eax, 4		
	mov ebx, 1		
	mov ecx, resultado
	mov edx, len_resultado 
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

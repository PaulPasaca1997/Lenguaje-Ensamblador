
;Suma de dos numeros ingresados por teclado


section .data
	resultado db "La suma es: "
	len_resultado equ $-resultado

	enter db " "
	len_enter equ $-enter 
	 
	numero1 db "Ingrese primer numero:"
	len_numero1 equ $-numero1 

	numero2 db "Ingrese segundo numero:"
	len_numero2 equ $-numero2

section .bss
	
	a resb 1
	b resb 1
	suma resb 1

section .text
	global_start 
_start: 

	;IMPRIME MENSAJE 1 
	mov eax, 4		
	mov ebx, 1		
	add ecx, numero1
	add edx, len_numero1 
	int 80H	
	
	;LEE MENSAJE 1 
	mov eax, 3		
	mov ebx, 2		
	add ecx, a
	add edx, 2 
	int 80H	



	;IMPRIME MENSAJE 2 
	mov eax, 4		
	mov ebx, 1		
	add ecx, numero2
	add edx, len_numero2 
	int 80H	
	
	;LEE MENSAJE 2
	mov eax, 3		
	mov ebx, 2		
	add ecx, b
	add edx, 2 
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
	add ecx, resultado
	add edx, len_resultado 
	int 80H	

	mov eax, 4		
	mov ebx, 1		
	add ecx, suma
	add edx, 1
	int 80H


	mov eax, 4		
	mov ebx, 1		
	add ecx, enter
	add edx, len_enter 
	int 80H


	mov eax,1		;salida del programa
	mov ebx,0		;si el retorno es 0 (200 en la web) ok
	int 80H
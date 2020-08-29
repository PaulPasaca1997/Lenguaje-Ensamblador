;Paul Alexander Pasaca Coronel
;Sexto Ciclo


section .data
	msj db "*" ; mensaje a imprimir 
	salto_linea db 10, '' ;salto de linea 

section .bss
	result resb 1 ; reservamos un espacio result
section .text
	global _start
		_start:
			mov ecx,9 
			mov ebx,9


		loop1:
			push ecx
			push ebx
			call enter 
			pop ecx
			mov ebx, ecx
			push ebx

		loop2:
			push ecx
			add ecx, '0'
			mov [result], ecx
			call asterisco 
			pop ecx
			loop loop2
			pop ebx
			pop ecx
			;dec ebx ; AQUI SE DEBE COMENTAR ESTE DECREMENTO PARA QUE PUEDA SALIR EL CUADRADO 
			loop loop1

		enter:					;imprimir salto de linea
			mov eax, 4
			mov ebx, 1
			mov ecx, salto_linea
			mov edx,1
			int 80h
			ret
		asterisco:				;imprimir mensaje
			mov eax, 4
			mov ebx, 1
			mov ecx, msj
			mov edx, 1
			int 80h
			ret

		salir:
			mov eax, 1
			mov ecx, 0
			int 80h

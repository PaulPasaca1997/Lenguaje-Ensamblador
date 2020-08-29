;Paul Alexander Pasaca Coronel
;Sexto Ciclo


section .data	
	msj db "*"
	salto db " ", 0xa
	lensalto equ $-salto
	
section .text
	global _start
	
	
_start:
	mov ecx,9
	mov ebx,9
	
	l1:


		push ecx
		push ebx
		
		mov eax,4
		mov ebx,1
		mov ecx,salto
		mov edx,lensalto
		int 80h
		
		pop ecx
		mov ebx,ecx
		push ebx
				
		
	
	l2:
		push ecx
		
		mov eax,4
		mov ebx,1
		mov ecx,msj
		mov edx,1
		int 80h
		
		pop ecx
		
		loop l2
		
		pop ebx
		pop ecx
		
		loop l1
		jmp salir
		

	
	salir:

	
		mov eax,4
		mov ebx,1
		mov ecx,salto
		mov edx,lensalto
		int 80h
		
		mov eax,1
		mov ebx,0
		int 80h


section .data
	asterisco  db '*'
	salto db  ' '

;section .bss

section .text
	global _start 
_start: 

	mov ecx,9

imprimir:

	dec ecx 
	push ecx

	mov eax,4
	mov ebx,1
	mov ecx ,asterisco
	mov edx,1
	int 80h
	
	pop ecx  
	cmp ecx, 0
	jnz imprimir

;	jmp imprimir2


	mov eax,1
	int 80h




;Paul Alexander Pasaca Coronel
;Sexto Ciclo


section .data

nombre db "Paul Pasaca",10
len_n EQU $ - nombre

materia db "Ensamblador",10
len_m EQU $ - materia

genero db "M",10
len_g EQU $ - genero 



section .text
	global _start
_start:

	mov eax,4
	mov ebx,1
	mov ecx,nombre
	mov edx,len_n
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx,materia
	mov edx,len_m
	int 80h

	mov eax,4
	mov ebx,1
	mov ecx,genero
	mov edx,len_g
	int 80h






%macro imprimir 2 

	mov eax, 4		
	mov ebx, 1		
	mov ecx, %1		
	mov edx, %2	 	
	int 80H

%endmacro


section .data
	asterisco db '*'
	nueva_linea db 10,''
section .text
	global _start

_start:
	mov ecx, 10
	mov ebx, 1 

l1:
	push ecx
	push ebx
	
	;********************* nueva lineas **********************
	imprimir nueva_linea,1
	
	pop ecx
	push ecx

l2:
	push ecx
	;********************* asterisco **********************
	
	imprimir asterisco,1

	pop ecx
	loop l2  ;  salto a l2, dec cx,  
	;********************* finaliza loop de las columnas *********
	pop ebx
	pop ecx
	inc ebx
	loop l1
	;********************* finaliza loop de las fila *********

	mov eax, 1
	int 80h

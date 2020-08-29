;Paul Alexander Pasaca Coronel
;Sexto Ciclo

section .data
msg1 db "Ingrese 5 numeros", 10
len1 equ $-msg1 


msg2 db "Ingrese 5 numeros", 10
len2 equ $-msg2

arreglo db 0,0,0,0,0
leng_arreglo equ $-arreglo

section .bss
numero resb 2 
section .text
	global _start 
_start: 

	mov esi, arreglo
	mov edi,0

	mov eax, 4		;tipo de subrutina, operacion, escritura
	mov ebx, 1		;tipo de estandar, por teclado 
	mov ecx, msg1	;se almacena el mensaje	
	mov edx, len1 	;se almacena la referencia a imprimir por # de caracteres
	int 80H			;interrupcion de linux 

;********************lectura de datos en el arreglo******************
leer:
	mov eax,3
	mov ebx,0
	mov ecx,numero
	mov edx,2
	int 80h

	mov al,[numero]
	sub al,'0'

	mov [esi],al

	inc edi
	inc esi

	cmp edi,leng_arreglo
	jb leer

	mov ecx,0
	mov bl,0

comparacion:
	mov al, [arreglo+ecx]
	cmp al,bl 
	jb contador
	mov bl,al

contador:
	inc ecx
	cmp ecx,leng_arreglo
	jb comparacion

imprimir:
	add bl,'0'
	mov [numero],bl 
	mov eax, 4		;tipo de subrutina, operacion, escritura
	mov ebx, 1		;tipo de estandar, por teclado 
	mov ecx, msg2	;se almacena el mensaje	
	mov edx, len2 	;se almacena la referencia a imprimir por # de caracteres
	int 80H	

	mov eax, 4		;tipo de subrutina, operacion, escritura
	mov ebx, 1		;tipo de estandar, por teclado 
	mov ecx,numero	;se almacena el mensaje	
	mov edx,1 		;se almacena la referencia a imprimir por # de caracteres
	int 80H	

salir:
	mov eax,1		;salida del programa
	mov ebx,0		;si el retorno es 0 (200 en la web) ok
	int 80H




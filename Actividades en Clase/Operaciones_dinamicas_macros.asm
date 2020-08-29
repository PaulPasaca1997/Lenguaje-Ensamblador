;Paul Alexander Pasaca
;22-06-20


%macro imprimir 2 

	mov eax, 4		
	mov ebx, 1		
	mov ecx, %1		
	mov edx, %2	 	
	int 80H

%endmacro



%macro entrada1 2

	mov eax, 4
	mov ebx, 1
	mov ecx, %1
	mov edx, %2
	int 80h

%endmacro

%macro lectura 2

	mov eax, 3
	mov ebx, 0
	mov ecx, %1
	mov edx, %2
	int 80h

%endmacro



section .data

numero1 db "Ingrese primer valor: ",10
len_numero1 equ $-numero1

numero2 db "Ingrese segundo valor: ",10
len_numero2 equ $-numero2



salida_suma db "Respuesta suma: ",10
len_suma equ $-salida_suma

salida_resta db "Respuesta resta: ",10
len_resta equ $-salida_resta

salida_multiplicacion db "Respuesta multiplicacion: ",10
len_multiplicacion equ $-salida_multiplicacion

salida_cociente db "Respuesta division: ",10
len_cociente equ $-salida_cociente

salida_residuo db "Respuesta residuo: ",10
len_residuo equ $-salida_residuo

section .bss

    suma resb 1
    resta resb 1
    multiplicacion resb 1
    division resb 1

	a resb 1
	b resb 1
	cociente resb 1
    residuo resb 1

section .text
	global _start 
_start: 

	imprimir numero1,len_numero1	
	lectura a,2
	

	imprimir numero2,len_numero2	
	lectura b,2

	mov ax,[a]
	mov bx,[b]
	sub ax,'0'
	sub bx,'0'
	add ax,bx
	add ax,'0'

	mov [suma],ax

	imprimir salida_suma,len_suma
	
	imprimir suma,1

;--------------------------------
	

	mov ax,[a]
	mov bx,[b]
	sub ax,'0'
	sub bx,'0'
	sub ax,bx
	add ax,'0'

	mov [resta],ax

	imprimir salida_resta,len_resta
	
	imprimir resta,1

;--------------------------------------------

	
	mov al,[a]
	sub al,'0'

	mov bl,[b]
	sub bl,'0'

	mul bl
	add al,'0'

	mov [multiplicacion],al


	imprimir salida_multiplicacion,len_multiplicacion
	
	imprimir multiplicacion,1



;----------------------------------------------------

	mov al, [a]
	sub al, '0'

	mov bl, [b] 
	sub bl, '0'
 
	div bl
 
	
	add al, '0' 	
 	add ah, '0'

	mov [cociente], al
	mov [residuo], ah


	imprimir salida_cociente,len_cociente

	imprimir cociente,1

	imprimir salida_residuo,len_residuo
	imprimir residuo,1

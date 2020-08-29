;Paul Alexander Pasaca Coronel
;Sexto Ciclo

;Suma de dos numeros estaticos

%macro imprimir 2 

	mov eax, 4		
	mov ebx, 1		
	mov ecx, %1		
	mov edx, %2	 	
	int 80H

%endmacro


section .data
	resultado db "La suma es:",10
	len_resultado equ $-resultado

	line db " ",10
	len_line equ $-line 
	 

	mensaje db "La resta es: ",10
    len_mensaje equ $-mensaje
	
	mensaje2 db "La multiplicacion es: ",10
    len_mensaje2 equ $-mensaje2

    mensaje3 db "El cociente es: ",10
    len_mensaje3 equ $-mensaje3

    mensaje4 db "El residuo es: ",10
    len_mensaje4 equ $-mensaje4

section .bss
	suma resb 1
    result resb 1
    result2 resb 1
    result3 resb 1


section .text
	global _start 
_start: 

	;IMPRIME
	mov eax, 4		
	mov ebx, 2		
	add eax,ebx		; eax = eax + ebx
	add eax,'0' 	
	
	mov[suma],eax

	imprimir resultado,len_resultado
	
	imprimir suma,1


;--------------------------------
	
  	mov eax, 4
    mov ebx, 2
        
    ;Operacion
    sub eax, ebx
    add eax,'0'
        
    mov [result], eax
        
    imprimir mensaje, len_mensaje    
   	imprimir result,1

 
;-------------------------------------------------------------

 	mov eax, 4
    mov ebx,2
    mul ebx
    add eax,'0'
        
    mov [result2], eax
    
    imprimir mensaje2, len_mensaje2    
 	imprimir result2,1	
		
;----------------------------------------------

    mov eax, 4
    mov ebx, 2
    div ebx
    add eax,'0'
    mov [result3], eax
  	

  	imprimir mensaje3, len_mensaje3  

  	imprimir result3,1
  
	

	mov eax,1		;salida del programa
	mov ebx,0		;si el retorno es 0 (200 en la web) ok
	int 80H

if [$# -eq 1]

then
	echo "Compilando y ejecutando...."
 	nasm -f elf64 -o $1.o $1.asm ;
	ld -o $1 $1.o
	./$1 
else 
	echo".............."
	echo "Error XD "
fi
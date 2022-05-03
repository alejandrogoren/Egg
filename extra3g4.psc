Algoritmo g4extra3
	Definir N,i Como Entero
	Escribir 'Ingrese la dimension de los vectores.'
	Leer N
	Definir vec1 Como Caracter
	Definir vec2 Como Real
	
	Dimension vec1(N)
	Dimension vec2(N)
	
	Para i=0 Hasta N-1
		Escribir 'Ingrese el nombre de la persona n°' i+1
		Leer vec1(i)
		vec2(i)=Longitud(vec1(i))
	FinPara
	Para i=0 Hasta N-1
		Escribir vec1(i),' tiene ',vec2(i),' letras.'
	FinPara
FinAlgoritmo

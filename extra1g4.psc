Algoritmo g4ectra1
	Dimension vector1(5),vector2(5)
	Definir vector1,vector2 como entero
	Definir i Como Entero
	
	Para i=0 Hasta 4
		vector1(i)=aleatorio(1,9)
		vector2(i)=aleatorio(1,9)
	FinPara
	Escribir Sin Saltar 'vector 1=('
	
	Para i=0 Hasta 4
		Escribir Sin Saltar vector1(i)
		Si i<4 
			Escribir Sin Saltar',' 
		FinSi
	FinPara
	Escribir Sin Saltar ')'
	
	Escribir ''

	Escribir Sin Saltar 'vector 2=('
	Para i=0 Hasta 4
		Escribir Sin Saltar vector2(i)
		Si i<4 
			Escribir Sin Saltar',' 
		FinSi
	FinPara
	Escribir Sin Saltar ')'
FinAlgoritmo

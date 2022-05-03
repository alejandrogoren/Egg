Algoritmo g4e11
	Definir i,j,n Como Entero
	Definir matriz Como entero
	Escribir 'Ingrese la cantidad de filas y columnas'
	Leer n
	Dimension matriz(n,n)
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i==j
				matriz(i,j)=0
			SiNo
				matriz(i,j)=Aleatorio(1,9)
			FinSi
			Escribir Sin Saltar matriz(i,j),'  '
		FinPara
		Escribir ''
	FinPara
	
FinAlgoritmo
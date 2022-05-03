Algoritmo g4e10
	Definir matriz,n,m Como Entero
	Escribir 'Ingrese la cantidad de filas de la matriz.'
	Leer n
	Escribir 'Ingrese la cantidad de columnas.'
	Leer m
	
	matriz=rellenarMatriz(n,m)
	
FinAlgoritmo

SubProceso matriz<-rellenarMatriz(n,m)
	Definir i,j, matriz Como Entero
	Dimension matriz(n,m)
	Para i=0 Hasta n-1
		Para j=0 Hasta m-1
			matriz(i,j)=azar(10)
			Escribir Sin Saltar matriz(i,j),'  '
		FinPara
		Escribir''
	FinPara
	sumar(matriz,n,m)
FinSubProceso

SubProceso sumar(matriz,n,m)
	Definir i,j,suma como entero
	suma=0
	Para i=0 Hasta n-1
		Para j=0 Hasta m-1
			suma=suma+matriz(i,j)
		FinPara
	FinPara
	Escribir 'La suma de los números es ' suma,'.'
FinSubProceso
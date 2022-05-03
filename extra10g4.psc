Algoritmo extra10g4
	Definir n,m,matriz,traspuesta,i,j como entero
	Escribir 'Ingrese la cantidad de filas.'
	Leer n
	Escribir 'Ingrese la cantidad de columnas.'
	Leer m
	Dimension matriz(n,m)
	Dimension traspuesta(m,n)
	Escribir 'la matriz dada es: '
	Para i=0 hasta n-1
		Para j=0 Hasta m-1
			matriz(i,j)=Aleatorio(1,100)
			Escribir Sin Saltar matriz(i,j),' '
		FinPara
		Escribir ''
	FinPara
	
	Escribir 'Su traspuesta es: '
	Para i=0 Hasta m-1
		Para j=0 Hasta n-1
			traspuesta(i,j)=matriz(j,i)
			Escribir Sin Saltar traspuesta(i,j),' '
		FinPara
		Escribir''
	FinPara
	
FinAlgoritmo

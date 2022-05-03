Algoritmo g4e9
	Definir matriz,i,j,num Como Entero
	Dimension matriz(5,5)
	
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			matriz(i,j)=azar(10)
		FinPara
	FinPara
	
	Escribir 'Ingrese el número que desea buscar'
	Leer num
	buscar(num,matriz)
	
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			Escribir sin saltar matriz(i,j) '  '
		FinPara
		Escribir''
	FinPara
FinAlgoritmo

SubProceso buscar(num,matriz)
	Definir i,j,contador Como Entero
	contador=0
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			Si matriz(i,j)=num
				Escribir 'El número ' num ,' se encuentra en la fila ' i+1, ' columna ' j+1,'.'
				contador=contador+1
			FinSi
		FinPara
	FinPara
	Si contador=0
		Escribir 'El número ' num,' no se encuentra en la matriz'
	FinSi
FinSubProceso
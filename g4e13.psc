Algoritmo g4e13
	Definir matriz,n,i,j,suma Como Entero
	Definir condicion Como Logico
	Escribir 'Ingrese el orden de la matriz.'
	Hacer
		Leer n
		Si n>10
			Escribir 'La dimensión de la matriz debe ser menor o igual a 10.'
		FinSi
	Mientras Que n>10
	Dimension matriz(n,n)
	
	Para i=0 hasta n-1
		Para j=0 Hasta n-1
			Hacer
				Escribir 'Ingrese el elemento (', i+1,',',j+1,').'
				Leer matriz(i,j)
				Si matriz(i,j)<1 o matriz(i,j)>9
					Escribir 'Ingrese sólo números que se encuentren entre el 1 y el 9.'
				FinSi
			Mientras Que matriz(i,j)<1 o matriz(i,j)>9
		FinPara
	FinPara
	
	Para i=0 hasta n-1
		Para j=0 Hasta n-1
			Escribir Sin Saltar matriz(i,j),'  '
		FinPara
		Escribir ''
	FinPara	
	
	i=0
	Hacer
		Si contadorFilas(matriz,n,i)=contadorFilas(matriz,n,i+1)
			condicion=Verdadero
		SiNo
			condicion=Falso
		FinSi
		i=i+1
	Mientras Que condicion=Verdadero y i<n-1
	Para i=0 Hasta n-1
		Escribir 'La suma de la fila ' i+1, ' es ' contadorFilas(matriz,n,i),'.'
	FinPara
	Escribir ''
	Si condicion=Verdadero
		j=0
		Hacer
			Si contadorColumnas(matriz,n,j)=contadorColumnas(matriz,n,j+1)
				condicion=Verdadero
			SiNo
				condicion=Falso
			FinSi
			j=j+1
		Mientras Que condicion=Verdadero y j<n-1
	FinSi
	Para j=0 Hasta n-1
		Escribir 'La suma de las columna ' j+1, ' es ' contadorColumnas(matriz,n,j)
	FinPara
	Escribir''
	
	Si condicion=Verdadero
		Si contadorDiagonal1(matriz,n)=contadorDiagonal2(matriz,n)
			condicion=Verdadero
		SiNo
			condicion=Falso
		FinSi
	FinSi

	Escribir 'La suma de la diagonal 1 es ' contadorDiagonal1(matriz,n),'.'
	Escribir 'La suma de la diagonal 2 es ' contadorDiagonal2(matriz,n),'.'
	Escribir ''
	Si condicion=Verdadero
		Si contadorColumnas(matriz,n,0)==contadorFilas(matriz,n,0) y contadorColumnas(matriz,n,0)==contadorDiagonal1(matriz,n)
			condicion=Verdadero
		SiNo
			condicion=Falso
		FinSi
	FinSi
	
	Si condicion=Verdadero
		Escribir 'La matriz ingresada es una matriz mágica.'
	SiNo
		Escribir 'La matriz ingresada no es una matriz mágica.'
	FinSi
FinAlgoritmo

SubProceso suma<-contadorFilas(matriz,n,i)
	Definir j,suma Como Entero
	suma=0
	Para j=0 Hasta n-1
		suma=suma+matriz(i,j)
	FinPara
FinSubProceso

SubProceso suma<-contadorColumnas(matriz,n,j)
	Definir i,suma Como Entero
	suma=0
	Para i=0 Hasta n-1
		suma=suma+matriz(i,j)
	FinPara
FinSubProceso

SubProceso suma<-contadorDiagonal1(matriz,n)
	Definir suma,i,j Como Entero
	suma=0
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i==j
				suma=suma+matriz(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso suma<-contadorDiagonal2(matriz,n)
	Definir suma,i,j Como Entero
	suma=0
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i+j=n-1
				suma=suma+matriz(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso
Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

SubProceso inicializarMatriz(tablero,n1,n2)
	Definir i,j Como Entero
	Para i=0 Hasta n1-1
		Para j=0 Hasta n2-1
			tablero(i,j)='*'
		FinPara
	FinPara
FinSubProceso

SubProceso agregarPalabra(tablero,palabra,i)
	Definir j Como Entero
	Para j=0 Hasta 11
		tablero(i,j)=Subcadena(palabra,j,j)
	FinPara
FinSubProceso

SubProceso acomodarPalabras(tablero)
	Definir i,j,dif Como Entero
	Para i=0 Hasta 8
		dif=5-buscarR(tablero,i)
		Si dif>0
			Para j=11 Hasta dif
				tablero(i,j)=tablero(i,j-dif)
			FinPara
			Para j=0 Hasta dif-1
				tablero(i,j)=' '
			FinPara
		FinSi
	FinPara
FinSubProceso

SubProceso posicion<-buscarR(tablero,i)
	Definir j,posicion Como Entero
	Definir encontrada Como Logico
	j=0
	Hacer 
		Si tablero(i,j)='r'
			encontrada=Verdadero
			posicion=j
		SiNo
			encontrada=Falso
			j=j+1
		FinSi
	Mientras Que encontrada=falso
FinSubProceso

SubProceso imprimirMatriz(tablero,n1,n2)
	Definir i,j Como Entero
	Para i=0 Hasta n1-1
		Para j=0 Hasta n2-1
			Escribir ' ',Mayusculas(tablero(i,j)),' ' Sin Saltar
		FinPara
		Escribir' '
	FinPara
FinSubProceso
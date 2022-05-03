Algoritmo extra2g4

	Definir vec,suma,promedio Como Real
	Definir i,N Como Entero
	Escribir 'Ingrese la dimensión del vector.'
	Leer N
	Dimension vec(N)
	Para i=0 Hasta N-1
		Escribir 'Ingrese el valor n°' i+1
		Leer vec(i)
	FinPara
	suma=sumaVec(vec,N)
	promedio=suma/N
	eSCRIBIR 'El promedio es ' promedio
	
FinAlgoritmo
SubProceso suma<-sumaVec(vec,N)
	Definir suma Como Real
	Definir i Como Entero
	suma=0
	Para i=0 Hasta N-1
		suma=suma+vec(i)
	FinPara
FinSubProceso

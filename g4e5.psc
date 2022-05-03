Algoritmo g4e5
	Definir vec Como Real
	Definir i, N Como Entero
	Escribir 'Ingrese la dimensión del vector.'
	Leer N
	Dimension vec(N)
	Para i=0 Hasta N-1
		Escribir  'Inserte el valor n°' i+1
		Leer vec(i)
	FinPara
	
	valorMaximo(vec,N)
	
FinAlgoritmo
subproceso valorMaximo(vec,N)
	Definir max, min,i como real

max<-vec(0)
min<-vec(0)
Para i=0 Hasta N-1
	Si vec(i)>max
		max<-vec(i)
	FinSi
	Si vec(i)<min
		min<-vec(i)
	FinSi
FinPara
Escribir 'El valor mas grande es ' max,'.'
Escribir 'El valor mas chico es ' min,'.'
FinSubProceso
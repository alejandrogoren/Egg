Algoritmo g4e2
	Dimension vec(10)
	Definir vec,suma,resta,multiplicacion,division Como Real
	Definir i Como Entero
	Para i=0 Hasta 9
		Escribir 'Ingrese el valor n°' i+1
		Leer vec(i)
	FinPara
	suma=sumaVec(vec)
	resta=restaVec(vec)
	multiplicacion=multiVector(vec)
	Escribir 'suma=',suma
	Escribir 'resta=',resta
	Escribir 'multiplicacion=',multiplicacion
FinAlgoritmo

SubProceso suma<-sumaVec(vec)
	Definir suma Como Real
	Definir i Como Entero
	suma=0
	Para i=0 Hasta 9 
		suma=suma+vec(i)
	FinPara
FinSubProceso
SubProceso resta<-restaVec(vec)
		Definir resta Como Real
		Definir i Como Entero
		resta=vec(0)
		Para i=1 Hasta 9 
			resta=resta-vec(i)
		FinPara
FinSubProceso
SubProceso multi<-multiVector(vec)
		Definir multi Como Real
		Definir i Como Entero
		multi=1
		Para i=0 Hasta 9 
		multi=multi*vec(i)
		FinPara
FinSubProceso
	
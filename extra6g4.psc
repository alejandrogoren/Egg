Algoritmo extra6g4
	Definir vec,n,i,max,min Como Entero
	Escribir 'Ingrese la dimensión del vector.'
	Leer n
	Dimension vec(n)
	Para i=0 Hasta n-1
		Escribir 'Ingrese el valor ' i+1,'.'
		Leer vec(i)
	FinPara
	max<-vec(0)
	min<-vec(0)
	Para i=0 Hasta n-2
		Si vec(i+1)>vec(i)
			max<-vec(i+1)
		FinSi
		Si vec(i+1)<vec(i)
			min<-vec(i+1)
		FinSi
	FinPara
	Escribir 'La diferencia entre el valor máximo y el mínimo es ' max-min,'.'
	
FinAlgoritmo

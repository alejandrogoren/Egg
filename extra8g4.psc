Algoritmo extra8g4
	Definir vec,n,i,resultado Como Entero
	Escribir 'Ingrese la dimension del vector.'
	Leer n
	Dimension vec(n)
	Para i=0 Hasta n-1
		Escribir 'Ingrese el valor ' i+1
		Leer vec(i)
	FinPara
	resultado=multiplicar(vec,n)
	Escribir 'El producto de los elementos del vector es ' resultado,'.'
FinAlgoritmo
Funcion resultado<-multiplicar(vec,n)
	Definir i,resultado Como Entero
	resultado=1
	Para i=0 Hasta n-1
		resultado=resultado*vec(i)
	FinPara
FinFuncion
	
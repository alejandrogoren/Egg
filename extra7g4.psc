Algoritmo extra7g4
	Definir vec,i,n,suma Como Entero
	Escribir 'Ingrese la dimensión del vector.'
	Leer n
	Dimension vec(n)
	Para i=0 Hasta n-1
		Escribir 'Ingrese el valor ' i+1
		Leer vec(i)
	FinPara
	i=0
	Escribir 'La suma de los valores es ' sumarValores(vec,n,i),'.'
FinAlgoritmo
Funcion resultado<-sumarValores(vec,n,i)
	Definir resultado Como Entero
	resultado=vec(i)
	Si i<n-1
		resultado=resultado+sumarValores(vec,n,i+1)
	FinSi
FinFuncion
	
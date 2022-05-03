Algoritmo g4e7
	Definir vec1,vec2 Como entero
	Definir n como entero
	
	Escribir 'Ingrese la dimensión de los vectores.'
	Leer n
	Dimension vec1(n)
	Dimension vec2(n)
	rellenar(vec1,n)
	rellenar(vec2,n)
FinAlgoritmo
SubProceso rellenar(vec,n)
	Definir i Como Entero
	Definir igual Como Logico
	Para i=0 Hasta n-1
		vec(i)=aleatorio(0,1)
	FinPara
	igual=iguales(vec,n)
	Para i=0 Hasta n-1
		Escribir Sin Saltar vec(i),' '
	FinPara
	Escribir''
	Si igual=Verdadero
		Escribir 'Todos los valores son iguales.'
	SiNo
		Escribir 'El vector tiene valores distintos.'
	FinSi
FinSubProceso

Funcion retorno<-iguales(vec,n)
	Definir retorno Como Logico
	Definir i Como Entero
		i=0
		Hacer
			Si vec(i)=vec(i+1)
				retorno<-Verdadero
			SiNo
				retorno<-Falso
			FinSi
			i=i+1
		Mientras Que retorno=Verdadero y i<n-1
	
FinFuncion
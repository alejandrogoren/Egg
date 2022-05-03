Algoritmo g4e3
	Definir vec,buscar Como Real
	Definir n,i,it Como Entero
	Escribir 'Ingrese la dimension del vector.'
	Leer n
	Dimension vec(n)
	Para i=0 Hasta n-1
		Escribir 'Ingrese el valor ' i+1
		Leer vec(i)
	FinPara
	
	Escribir 'Ingrese el valor que desea buscar.'
	Leer buscar
	it=0
	Para i=0 Hasta n-1
		Si vec(i)=buscar
			it=it+1
		FinSi
	FinPara
	Si it=0
		Escribir 'El valor no se encuentra en el vector.'
	SiNo
		Si it=1
			Para i=0 Hasta n-1
				Si vec(i)=buscar
					Escribir 'El valor ' buscar, ' se encuentra en la posición ' i, '.'
				FinSi
			FinPara
		SiNo
			Si it>=2
				Escribir Sin Saltar 'El valor ' buscar, ' se encuentra en las posiciones:'
				Para i=0 hasta n-1
					Si vec(i)=buscar
						Escribir Sin Saltar i,' '
					FinSi
				FinPara
			FinSi
			 
		FinSi
	FinSi
	
FinAlgoritmo

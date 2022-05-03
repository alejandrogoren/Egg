Algoritmo extra14g4
	Definir mat,vec,producto,i,j,k,suma Como Entero
	Dimension mat(3,3),vec(3),producto(3)
	
	Escribir 'matriz = '
	Para i=0 Hasta 2
		Para j=0 Hasta 2
			mat(i,j)=Aleatorio(0,9)
			Escribir Sin Saltar mat(i,j),'  '
		FinPara
		Escribir ''
	FinPara
	
	Escribir 'vector = '
	Para i=0 Hasta 2
		vec(i)=Aleatorio(0,9)
		Escribir vec(i)
	FinPara
	
	Escribir 'El producto es '
	Para i=0 Hasta 2
		suma=0
		para j=0 Hasta 2
			suma=suma+mat(i,j)*vec(j)
		FinPara
		producto(i)=suma
		Escribir producto(i)
	FinPara

FinAlgoritmo

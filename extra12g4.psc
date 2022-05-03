Algoritmo extra12g4
	Definir mat1,mat2,mat3,i,j,k,suma,a,b Como Entero
	Dimension mat1[3,3],mat2[3,3],mat3[3,3]
	Escribir 'Matriz 1 = '
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			mat1[i,j]<-Aleatorio(0,9)
			Escribir mat1[i,j],'  ' Sin Saltar
		FinPara
		Escribir ''
	FinPara
	
	Escribir 'Matriz 2 = '
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			mat2[i,j]<-Aleatorio(0,9)
			Escribir mat2[i,j],'  ' Sin Saltar
		FinPara
		Escribir ''
	FinPara
	
	Escribir 'La multiplicación de las matrices es '
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			suma=0
			Para k<-0 Hasta 2 Hacer
				suma <- suma+mat1[i,k]*mat2[k,j]
			FinPara
			mat3[i,j]<-suma
			Si mat3[i,j]<100 
				Escribir Sin Saltar' '
			FinSi
			Si mat3[i,j]<10
				Escribir Sin Saltar' '
			FinSi
			Escribir mat3[i,j],'  ' Sin Saltar
		FinPara
		Escribir ''
	FinPara
FinAlgoritmo
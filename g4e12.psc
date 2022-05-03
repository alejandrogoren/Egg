Algoritmo g4e12
	Definir palabra,matriz como cadena
	Definir  L,i,j Como Entero
	Dimension matriz(3,3)
	Hacer
		Escribir 'Inserte una palabra de 9 letras.'
		Leer palabra
		L<-Longitud(palabra)
	mientras Que L<>9
	
	Para i=0 Hasta 2
			Para j=0 Hasta 2
				matriz(i,j)=subcadena(palabra,j+(3*i),j+(3*i))
				Escribir Sin Saltar matriz(i,j) ,'  '
			FinPara
		Escribir ''
	FinPara
	
FinAlgoritmo
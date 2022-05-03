Algoritmo extra13g4
	Definir n,suma,matriz,i,j Como Entero
	
	Escribir 'Ingrese la cantidad de filas.'
	Leer n
	Dimension matriz[n,3]
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta 2 Hacer
			Si j<2 Entonces
				Escribir 'Ingrese el valor (',i+1,',',j+1,').'
				Leer matriz[i,j]
			SiNo
				matriz[i,j]<-matriz[i,0]+matriz[i,1]
			FinSi
		FinPara
	FinPara
	
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta 2 Hacer
			Segun j Hacer
				0:
					Escribir matriz[i,j],' + ' Sin Saltar
				1:
					Escribir matriz[i,j],' = ' Sin Saltar
				2:
					Escribir matriz[i,j] Sin Saltar
			FinSegun
		FinPara
		Escribir ''
	FinPara
	
FinAlgoritmo

Algoritmo extra9g4
	Definir matriz Como Entero
	Dimension matriz(10,10)
	rellenarMatriz(matriz)
	mostrarMatriz(matriz)
FinAlgoritmo
SubProceso rellenarMatriz(matriz)
	Definir i,j,n Como Entero
	n=10
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i-j=0 o i+j=n-1
				matriz(i,j)=0
			SiNo
				matriz(i,j)=Aleatorio(1,9)
			FinSi
	FinPara
FinPara
FinSubProceso
SubProceso mostrarMatriz(matriz)
	Definir i,j Como Entero
	Para i=0 Hasta 9
		Para j=0 Hasta 9
			Escribir Sin Saltar matriz(i,j),'  '
		FinPara
		Escribir ''
	FinPara
FinSubProceso
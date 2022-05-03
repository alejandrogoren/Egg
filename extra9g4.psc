Algoritmo extra9g4
	Definir matriz Como Entero
	Dimension matriz(4,4)
	rellenarMatriz(matriz)
FinAlgoritmo
SubProceso rellenarMatriz(matriz)
	Definir i,j,n Como Entero
	n=4
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i=j
				matriz(i,j)=0
			SiNo
				Si i+j=n-1
					matriz(i,j)=0
				SiNo
					matriz(i,j)=Aleatorio(1,9)
				FinSi
				
			FinSi
		FinPara
	FinPara
	mostrarMatriz(matriz)
FinSubProceso
SubProceso mostrarMatriz(matriz)
	Definir i,j Como Entero
	Para i=0 Hasta 3
		Para j=0 Hasta 3
			Escribir Sin Saltar matriz(i,j),'  '
		FinPara
		Escribir ''
	FinPara
	FinSubProceso
	
Algoritmo extra15g4
	Definir dias Como Caracter
	Definir matriz,i,j,productos Como Entero
	Dimension dias[6],productos[7],matriz[7,6]
	dias[0] <- 'Lunes'
	dias[1] <- 'Martes'
	dias[2] <- 'Miércoles'
	dias[3] <- 'Jueves'
	dias[4] <- 'Viernes'
	dias[5] <- 'Total producto'
	///Rellenar la matriz
	Para i<-0 Hasta 4 Hacer
		productos[i] <- i+1
	FinPara
	Para i<-0 Hasta 6 Hacer
		Para j<-0 Hasta 5 Hacer
			Si i<5 Y j<5 Entonces
				matriz[i,j]<-azar(100)
			SiNo
				Si i=5 Y j<5 Entonces
					matriz[5,j]<-sumarColumna(matriz,j)
				SiNo
					Si i<6 Y j=5 Entonces
						matriz[i,5]<-sumarFila(matriz,i)
					SiNo
						Si i=6 Entonces
							matriz[6,j]<-encontrarMaximo(matriz,j)
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara 
	///
	///Escribir la matriz
	Escribir '             ' Sin Saltar
	Para i<-0 Hasta 5 Hacer
		Escribir dias[i],'   ' Sin Saltar
	FinPara
	Escribir ''
	Para i<-0 Hasta 6 Hacer
		Si i<5 Entonces
			Escribir 'Producto ',productos[i],'    ' Sin Saltar
		SiNo
			Si i=5 Entonces
				Escribir 'Total     ' Sin Saltar
			SiNo
				Si i=6 Entonces
					Escribir 'Mas vendido     ' Sin Saltar
				FinSi
			FinSi
		FinSi
		Para j<-0 Hasta 5 Hacer
			Si i<5 Entonces
				Si matriz[i,j]<10 Entonces
					Escribir ' ' Sin Saltar
				FinSi
				Escribir ' ',matriz[i,j],'       ' Sin Saltar
			SiNo
				Si i=5 Entonces
					Escribir '    ',matriz[i,j],'   ' Sin Saltar
				SiNo
					Si i=6 Entonces
						Escribir matriz[i,j],'         ' Sin Saltar
					FinSi
				FinSi
			FinSi
		FinPara
		Escribir ''
	FinPara ///
FinAlgoritmo

Funcion resultado <- sumarFila(matriz,i)
	Definir resultado,j,suma Como Entero
	suma <- 0
	Para j<-0 Hasta 4 Hacer
		suma <- suma+matriz[i,j]
	FinPara
	resultado <- suma
FinFuncion

Funcion resultado <- sumarColumna(matriz,j)
	Definir resultado,i,suma Como Entero
	suma <- 0
	Para i<-0 Hasta 4 Hacer
		suma <- suma+matriz[i,j]
	FinPara
	resultado <- suma
FinFuncion

Funcion posicionMax <- encontrarMaximo(matriz,j)
	Definir max,i,posicionMax Como Entero
	max <- matriz[0,j]
	posicionMax <- 1
	Para i<-1 Hasta 4 Hacer
		Si matriz[i,j]>max Entonces
			max <- matriz[i,j]
			posicionMax <- i+1
		FinSi
	FinPara
FinFuncion

Algoritmo g4e4
	Definir N Como Entero
	Definir vecA,vecB,vecC como real
	N=1
	menu(N)
FinAlgoritmo

SubProceso menu(N)
	Definir vecA,vecB,vecC Como Real
	Definir i como entero
	Definir elegir Como Caracter
	Hacer
		
		Escribir '¿Que desea hacer?'
		Escribir 'A. Llenar Vector A.'
		Escribir 'B. Llenar Vector B. '
		Escribir 'C. Llenar Vector C con la suma de los vectores A y B.'
		Escribir 'D. Llenar Vector C con la resta de los vectores B y A. '
		Escribir 'E. Mostrar.'
		Escribir 'F. Salir.'
		
		Leer elegir
		
		Segun elegir
			'A': Si N=1
					N=dimensionar()
				FinSi
				Dimension vecA(N)
				Para i=0 Hasta N-1
					vecA(i)=Aleatorio[-100,100]
				FinPara
				
			'B':Si N=1
				N=dimensionar()
			FinSi
			Dimension vecB(N)
			Para i=0 Hasta N-1
				vecB(i)=Aleatorio[-100,100]
			FinPara
			
		'C':
			Dimension vecC(N)
			Para i=0 Hasta N-1
				vecC(i)=vecA(i)+vecB(i)
			FinPara
			
		'D':
			Para i=0 Hasta N-1
				vecC(i)=vecA(i)-vecB(i)
			FinPara
			
		'E':
			mostrarVectores(vecA,vecB,vecC,N)
			
			De otro Modo 
			Si elegir<>'F'
				Escribir 'Ingrese una opcion válida'
			FinSi
			
			
			
	FinSegun
Mientras Que elegir<>'F'


FinSubProceso


SubProceso N<-dimensionar()
	Definir N como entero
	Escribir 'Inserte la dimensión de los vectores.'
	Leer N
FinSubProceso

SubProceso mostrarVectores(vecA,vecB,vecC,N)
	Definir opciones Como Caracter
	Definir i Como Entero
	Escribir 'Que vector desea mostrar?'
	Leer opciones
	Segun opciones
		'A':Escribir 'VECTOR A = '
			Para i=0 Hasta N-1
				Escribir Sin Saltar vecA(i),' '
			FinPara
		'B': Escribir 'VECTOR B = '
			Para i=0 Hasta N-1
				Escribir Sin Saltar vecB(i),' '
			FinPara
		'C':
			Escribir 'VECTOR C = '
			Para i=0 Hasta N-1
				Escribir Sin Saltar vecC(i),' '
			FinPara
	FinSegun
	
FinSubProceso


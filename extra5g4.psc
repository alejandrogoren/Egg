Algoritmo g4e5
	Definir vector,frase,carac Como Caracter
	Definir i,posicion,espacio,derecha,izquierda Como Entero
	Dimension vector(20)
	
	Escribir 'Ingrese una frase.'
	Leer frase
	
	Para i=0 Hasta 19
		vector(i)=Subcadena(frase,i,i)
	FinPara
	Escribir 'Ingrese la posición del nuevo caracter.'
	Leer posicion
	Escribir 'Escriba el caracter.'
	Leer carac
	
	Para i=0 Hasta posicion
		Si vector(i)=' '
			izquierda=i
		FinSi
	FinPara
	
	
	Para i=posicion Hasta 19
		Si vector(i)=' ' o vector(i)=''
			derecha=i
		Sino derecha=20
		FinSi
	FinPara
	
	
	Si posicion-izquierda>=derecha-posicion
		espacio=izquierda
		
		Para i=espacio Hasta posicion
			vector(i)=vector(i+1)
			
		FinPara
		vector(posicion)=carac
	Sino 
		espacio=derecha
		Para i=19 Hasta posicion+1
			vector(i)=vector(i-1)
			
		FinPara
		vector(posicion)=carac
	FinSi
	
	
	Para i=0 Hasta 19
		Escribir Sin Saltar vector(i)
	FinPara
FinAlgoritmo

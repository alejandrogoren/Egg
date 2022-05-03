Algoritmo g4e6
	Definir vector,frase,carac Como Caracter
	Definir i,posicion,espacio,derecha,izquierda Como Entero
	Dimension vector(20)
	
	Escribir 'Ingrese una frase.'
	Leer frase
	Para i=0 Hasta 19
		vector(i)=Subcadena(frase,i,i)
	FinPara
	Escribir 'Escriba el caracter que desea ingresar.'
	Leer carac
	Escribir 'Ingrese la posición del nuevo caracter.'
	Leer posicion
	
	Si vector(posicion)=' ' Entonces
		vector(posicion)=carac
		Para i=0 Hasta 19
			Escribir Sin Saltar vector(i)
		FinPara
	Sino 
		Escribir 'La posición está ocupada por otro caracter.'
	FinSi
	
	
FinAlgoritmo

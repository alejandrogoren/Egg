Algoritmo Salida_de_un_laberinto
	Definir mat, i, j, n, yo, resp, aux,ant, Ii, Jj Como Entero
	//aca creamos el laberinto
	n=10
	Dimension mat(n,n)
	para i=0 hasta n-1
		para j=0 hasta n-1
			si (i=0 y j=0) o (i=n-1 y j=n-1)
				mat(i,j)=1
			sino 
				mat(i,j)=Aleatorio(0,1)
			FinSi
		FinPara
	FinPara
	
	///parteAlex
	Para i=0 Hasta n-1
		Para j=0 hasta n-1
			Si i=0 y j<n-1 y mat(i,j)=1 y mat(i,j+1)=0 y mat(i+1,j)=0
				mat(i+1,j)=1
			FinSi
			Si i=n-1 y j<n-1 y mat(i,j)=1 y mat(i,j+1)=0 y mat(i-1,j)=0
				mat(i-1,j)=1
			FinSi
			Si i>0 y i<n-1 y j>0 y j<n-1 
				Si mat(i,j)=1 y mat(i,j+1)=0 y mat(i+1,j)=0 Entonces
					mat(i+1,j)=1
				FinSi
				Si mat(i,j)=1 y mat(i,j-1)=0 y mat(i,j+1)=0
					mat(i,j+1)=1
				FinSi
			FinSi
			Si j=0 y i<n-1
				Si mat(i,j)=1 y mat(i,j+1)=0
					mat(i+1,j)=1
				FinSi
			FinSi
		FinPara
	FinPara
	///FinAlex
	
	
	para i=0 hasta n-1
		para j=0 hasta n-1
			Escribir Sin Saltar mat(i,j) "  "
		FinPara
		Escribir " "
	FinPara
	//aca vamos a programar la parte donde nos vamos a mover
	Escribir "elija un numero distinto de 1 y 0"
	leer yo
	mat(0,0)=yo
	aux=1
	ant=1
	i=0
	j=0
	Mientras mat(n-1,n-1)<>yo
		Borrar Pantalla
		para Ii=0 hasta n-1
			para Jj=0 hasta n-1
				Escribir Sin Saltar mat(Ii,Jj) "  "
			FinPara
			Escribir " "
		FinPara
		hacer
			Escribir "arriba=8 ; abajo=2 ; derecha=6; izquierda=4"
			leer resp
	    mientras que resp<>8 y resp<>2 y resp<>6 y resp<>4
	   
		
		segun resp
			8:
				i=i-1
				si (i>-1 y i<10) y (j>-1 y j<10)
					si mat(i,j)<>0
						ant=mat(i,j)
						mat(i,j)=yo
				    SiNo
						Escribir "ouch"
						i=i+1
					FinSi
					
			    FinSi
				
			2:
				i=i+1
				si (i>-1 y i<10) y (j>-1 y j<10)
					si mat(i,j)<>0
						ant=mat(i,j)
						mat(i,j)=yo
				    SiNo
						Escribir "ouch"
						i=i-1
					FinSi
					
			    FinSi
			6:
				j=j+1
				si (i>-1 y i<10) y (j>-1 y j<10)
					si mat(i,j)<>0
						ant=mat(i,j)
						mat(i,j)=yo
				    SiNo
						Escribir "ouch"
						j=j-1
					FinSi
					
			    FinSi
			4:
				j=j-1
				si (i>-1 y i<10) y (j>-1 y j<10)
					si mat(i,j)<>0
						ant=mat(i,j)
						mat(i,j)=yo
				    SiNo
						Escribir "ouch"
						j=j+1
					FinSi
			    FinSi
		FinSegun
		
		resp=0
	FinMientras
	
	
	
	
FinAlgoritmo












Algoritmo desafioZombie
	Definir secuencia, matriz Como Caracter
	Definir L,n Como Entero
	Definir i Como Entero
	Definir confirmador,diag1,diag2 Como Logico
	
	//Ingresar secuencia con caracteres A,B,C Y D de 9,16 o 1369 caracteres.
	
	secuencia='CCADDBACCDDDDBDBCCABBAABDBCDCADDABABCDCDDABBBCABBABBDCADCCDABDDACDBBBDBDCCDDCABCAAAACDCDCCACDCDDADAADDACBDBCCDDBCBCBBAAADDAADCAABBBCBCCBCBDBCCBBCBABADAACDBDBADCBBACDADAADABBDBDBDBDCCDDCABCCCCCADBBBBCCDACCBBBDBDAADDBCCBCCBCBDDDDCCBAAACDDBBCAABAADABBBCCCCDCCBBDCDABCDACBCBACDBCCDABDBDCDCADCCBBADDBDCCADCCDCCACCDCDBCDBBADBAADBBCAADDABCAADADAABAACCBABDADADADDBCABDCCBBAADDDCDDCBADBCACCAAADCCDDABDBACBCAAADDBADBDACDDBDCBDCCCDDCACBCCCACCCCBACBAAAAACBCBCDAADCAACBCABDDABCBCBACCADABBBABBBBBAACADDDDBABACADAAABDDDCCDCACAACACADADBABACBABDBBADCDBBDACDCAABCADDBDBDCAABDCDABDDADDCDDBCBCDADCDBBDACABCDAABBCBADDDBCBADCABACDCABBCBCBCBCADBABBDBCCCADCADDCBABBDDDBBCBCDABACDDDABCCDBACCBDBADADDDAAACBDCDCCAACBDDCDCBADACDDDDBDCBAACDADBBDBDBCCACADBAABBAADAADDDACDDCDBDDBBDAADDAACCCACDBBBBBDCDCDDDABBCBAAADACADDCDCDCBCDCACAAABCADBDBBDDACCBBDABDDBCADCCCADDCDBACBBBDAADDCDAAADBBCDADBDBCBDDCAABCCDCCDCABCAACADADAACADDBBDABAABACDACDCDBBDDCCBCBCAAACBDBDBBBDBDBBCADCBACDCCBDACBBACBCADCDBACCADCDBDCDBBACBBCDCAAAAABCCDDCDDBBCBABCBCAABDBCCACBABDCABAACBDBDBCCCCADBBCDCCCAABADBACDDBADCDCAADDDCBDDBDCDCCCCCCCDBCDDBACBBCDACDADCACBDBBCCCDCCBCBCDACBDDDACCCAADBDBBDADDCCDDDBCDABCCBACCCCCBAACCBCABAAABBCABBCACCCABCDACBCDBDACACDDCACBCBBCCADABCBBDDABADDAAABACCBDCDABCBBBBACCDABAACDCACCCBBCDDACCDBCBCBAACBBBBADBCBCDABAAAABADAAAACDACADACDBBCCABADDDCACDCAACCDABBDBDAABADDBDCCCACDADBDDDCBBCBDCADCBCDAABDDDDBBBBCDDCC'
	Escribir 'Secuencia: ', secuencia 
	Escribir''
	L=Longitud(secuencia)
	i=0
	Si L=9 o L=16 o L=1369 Entonces
		
		Hacer
			Si Subcadena(secuencia,i,i)<>'A' y Subcadena(secuencia,i,i)<>'B' y Subcadena(secuencia,i,i)<>'C' y subcadena(secuencia,i,i)<>'D'
				confirmador=Falso
			SiNo
				confirmador=Verdadero
			FinSi
			i=i+1
		Mientras Que confirmador=verdadero y i<L
		Si confirmador=Verdadero
			
			n=raiz(L)
			Dimension matriz(n,n)
			rellenarMatriz(matriz,secuencia,n)
			mostrarMatriz(matriz,n)
			
			Escribir''
			diag1=evaluardiagonal1(matriz,n)
			diag2=evaluarDiagonal2(matriz,n)
			Si diag1=Verdadero y diag2=Verdadero
				Escribir 'SE HA DETECTADO EL GEN Z.'
			SiNo
				Escribir 'NO SE HA DETECTADOR EL GEN Z.'
			FinSi
		SiNo
			Escribir 'La muestra no se puede analizar.'
		FinSi
		
	SiNo
		Escribir 'La muestra no se puede analizar.'
	FinSi
FinAlgoritmo

SubProceso rellenarMatriz(matriz,secuencia,n)
	Definir i,j Como Entero
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			matriz(i,j)=Subcadena(secuencia,(n*i)+j,(n*i)+j)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,n)
	Definir i,j Como Entero
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir '  ',matriz(i,j) Sin Saltar
		FinPara
		Escribir''
	FinPara
FinSubProceso

SubProceso verificar<-evaluarDiagonal1(matriz,n)
	Definir verificar Como Logico
	Definir diagonal Como Caracter
	Definir i,j Como Entero
	Dimension diagonal(n)
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i=j
				diagonal(i)=matriz(i,j)
			FinSi
		FinPara
	FinPara
	i=0
	Hacer
		Si diagonal(i)=diagonal(i+1)
			verificar=Verdadero
		SiNo
			verificar=Falso
		FinSi
		i=i+1
	Mientras que verificar=verdadero y i<n-1
FinSubProceso

SubProceso verificar<-evaluarDiagonal2(matriz,n)
	Definir verificar Como Logico
	Definir diagonal Como Caracter
	Definir i,j Como Entero
	Dimension diagonal(n)
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Si i+j=n-1
				diagonal(i)=matriz(i,j)
			FinSi
		FinPara
	FinPara
	i=0
	Hacer
		Si diagonal(i)=diagonal(i+1)
			verificar=Verdadero
		SiNo
			verificar=Falso
		FinSi
		i=i+1
	Mientras que verificar=Verdadero y i<n-1
FinSubProceso
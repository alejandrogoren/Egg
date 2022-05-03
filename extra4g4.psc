Algoritmo g4e4
	Definir notas,i,deficientes,regulares,buenos,excelentes Como entero
	Dimension notas(100)
	
	deficientes=0
	regulares=0
	buenos=0
	excelentes=0
	Para i=0 Hasta 99
		notas(i)=Aleatorio(0,20)
		Si notas(i)<=5
			deficientes=deficientes+1
		SiNo
			Si notas(i)>5 y notas(i)<=10
				regulares=regulares+1
			SiNo
				Si notas(i)>10 y notas(i)<=15
					buenos=buenos+1
				SiNo
					Si notas(i)>15 y notas(i)<=20
						excelentes=excelentes+1
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	
	Escribir deficientes ' estudiantes son deficientes.'
	Escribir regulares ' estudiantes son regulares'
	Escribir buenos ' estudiantes son buenos.'
	Escribir excelentes ' estudiantes son excelentes.'
FinAlgoritmo

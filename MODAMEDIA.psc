Algoritmo CalculosEstadisticos
		Definir n, i, j, suma, maxFrecuencia, moda, mediana, aux, frecuencia Como Real
		Definir vector Como Real
		Escribir "Ingrese el tamaño del vector: "
		Leer n
		Dimension vector[n]
		
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese el valor ", i, ": "
			Leer vector[i]
		FinPara
		suma <- 0
		Para i <- 1 Hasta n Hacer
			suma <- suma + vector[i]
		FinPara
		media <- suma / n
		maxFrecuencia <- 0
		Para i <- 1 Hasta n Hacer
			frecuencia <- 0
			Para j <- 1 Hasta n Hacer
				Si vector[j] = vector[i] Entonces
					frecuencia <- frecuencia + 1
				FinSi
			FinPara
			Si frecuencia > maxFrecuencia Entonces
				maxFrecuencia <- frecuencia
				moda <- vector[i]
			FinSi
		FinPara
		Para i <- 1 Hasta n-1 Hacer
			Para j <- 1 Hasta n-i Hacer
				Si vector[j] > vector[j+1] Entonces
					aux <- vector[j]
					vector[j] <- vector[j+1]
					vector[j+1] <- aux
				FinSi
			FinPara
		FinPara
		Si n MOD 2 = 0 Entonces
			mediana <- (vector[n/2] + vector[n/2 + 1]) / 2
		SiNo
			mediana <- vector[(n+1)/2]
		FinSi
		Escribir "Media: ", media
		Escribir "Moda: ", moda
		Escribir "Mediana: ", mediana
FinAlgoritmo

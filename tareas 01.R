library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

mean(conjunto$Altura)
subset(conjunto , conjunto$Altura <= mean(conjunto$Altura))
H.16 <- subset(conjunto,conjunto$Altura<16.5)

vecinos.3 <- subset(conjunto,conjunto$Vecinos <= 3)
vecinos.4 <- subset(conjunto ,conjunto$Vecinos > 4)

DBH.media <- subset(conjunto , conjunto$Diametro < mean(conjunto$Diametro))
DBH.16 <- subset(conjunto , conjunto$Diametro >16)


# Cuantas observaciones son menores o iguales a 16.9 cm de diametro

sum(conjunto$Diametro <=16.9)

# Cuantas observaciones son mayores a 18.5 m de altura

sum(conjunto$Altura>18.5)

# Especie 

Cedro_rojo <- subset(conjunto , conjunto$Especie =="C")
Diam_cedro <-subset(Cedro_rojo , Cedro_rojo$Diametro<=16.9)
Altura_cedro <-subset(Cedro_rojo , Cedro_rojo$Altura>18.5)

#histograma----------------------------------------------
hist(conjunto$Altura , col="yellow" , xlab = "H.media" , ylab ="H.16" , main = "histograma de altura")
hist(conjunto$Vecinos , col = "pink" , xlab = "vecinos.3" , ylab = "vecinos.4" , main = "histigrama de vecinos" )
hist (conjunto$Diametro , col = "red" , xlab = "DBH.media" , ylab ="DBH.16" , main = "Diametro")

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Diametro)

#GRAFICOS
?mtcars
carros <- mtcars[,c(1,2,9)]

#histograma
hist(carros$mpg)

#Grafico de Dispersão
plot(carros$mpg,carros$cyl)

#usando a ggplot instalada na aula 2.1
library(ggplot2)

ggplot(carros,aes(am))+geom_bar()

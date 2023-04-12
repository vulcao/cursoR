#criar vetor
cidades = c("belem","Mosqueiro","Ananindeua","castanhal","soure")
temperatura = c(12,19,24,26,30)
regiao = c(1,2,3,4,5)

#copiar vetor
cidades2 <- cidades

#acessar indice de vetor
print(cidades2[3])

#acessar intervalo de valores
temperatura[2:4]

#excluindo valor de vetor
cidades2[-2]

#replace value
cidades[2] <- "Outeiro"

#delete vetor
cidades2 <- NULL
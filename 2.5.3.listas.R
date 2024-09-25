#Listas
pessoa <- list(sexo = "M", cidade = "Belém", idade = 20)

#mostra a idade da pessoa
pessoa[3]
#ou
pessoa[["idade"]]

#editando idade da pessoa
pessoa[3] <- 31
#ou
pessoa[["idade"]] <- 43

#deletando a idade da pessoa
pessoa[["idade"]] <- NULL



#filtrando a lista
pessoa[c("cidade","idade")]

#lista de varios tipos
capitais <- list(cidade = cidades,
                 temperatura = temperatura,
                 regiao = regiao)
capitais


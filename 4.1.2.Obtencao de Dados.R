### DEFINIÇÃO DO PROBLEMA

#Precisamos entender os gastos com viagens a serviço para tomar medidas mais eficientes e, com isso, reduzir os custos das viagens a serviço.

#Vamos levantar algumas questões relevantes acerca dessa problemática:

# Qual é o valor gasto por órgão?
# Qual é o valor gasto por cidade?
# Qual é a quantidade de viagens por mês?


### OBTENÇÃO DOS DADOS


# Carregando dados
?read.csv

viagens <- read.csv(
  file="C:/Github/cursoR/4.1.Datasets/2019_Viagem.csv",
  sep=';',
  dec=',',
  fileEncoding='Windows-1252'
)
# ao rodar o comando deu o erro abaixo:
#Error in make.names(col.names, unique = TRUE) : 
#  invalid multibyte string 2
# parece ser um erro de fileEncoding
# Segundo o FAQ do Portal da Transparência o fileEncodign é o Windows-1252
# Qual o padrão CSV adotado no Portal da Transparência? Para a geração de arquivos CSV no Portal, foi adotada a codificação de caracteres Windows-1252 ou ANSI.

head(viagens)

View(viagens)

dim(viagens)

?summary
summary(viagens)
summary(viagens$Valor.passagens)

install.packages("dplyr")
library(dplyr)
glimpse(viagens)

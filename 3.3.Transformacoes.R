#Tidyr
#instacação
# install.packages("tidyr")
#habilita para o uso (?gather não existe se nao habilitar a lib)
library(tidyr)

#Quantidade de vendas por ano e produto

#Dataframe - Quantidade de Produtos por Ano
dfDate <- data.frame(Produto = c('A','B','C'),
                     A.2015 = c(10,15,19),
                     A.2016 = c(20,25,29),
                     A.2017 = c(30,35,39)
                     )
head(dfDate)

#Utilizando a função gather para mudar o formato da tabela
?gather

dfDate2 <- gather(dfDate, "Ano", "Quantidade", 2:4)
head(dfDate2)

?separate
dfDate3 <- separate(dfDate2, Ano, c("A","Ano"))
head(dfDate3)
dfDate3 <- dfDate3[-2]
head(dfDate3)

#Adiciona uma coluna (Mes) ao dataset
dfDate3$Mes <- c('01','02','03')
head(dfDate3)

#Uniir colunas
dfDate4 <- dfDate3 %>%
      unite(Data,Mes,Ano,sep='/')
head(dfDate4)

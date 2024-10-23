### Visualização dos resultados

# 1 - Qual é o valor gasto por órgão em passagens?

#Criando um dataframe com os 15 órgãos que gastam mais
library(dplyr)
p1 <- viagens %>%
  group_by(Nome.do.órgão.superior) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

#Alterando o nome das colunas
names(p1) <- c("orgao", "valor")

p1


#Plotando os dados com o ggplot

install.packages("ggplot2")
library(ggplot2)
ggplot(p1, aes(x = reorder(orgao, valor), y = valor))+
  geom_bar(stat = "identity")+
  coord_flip()+
  labs(x = "Valor", y = "Órgãos")



# 2 - Qual é o valor gasto por cidade?
install.packages("dplyr")
library(dplyr)
#Criando um dataframe com as 15 cidades que gastam mais
p2 <- viagens %>%
  group_by(Destinos) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

p2

#Alterando o nome das colunas
names(p2) <- c("destino", "valor")
p2

#Criando o gráfico
ggplot(p2, aes(x = reorder(destino, valor), y = valor))+
  geom_bar(stat = "identity", fill = "#0ba791")+
  geom_text(aes(label = valor), vjust = 0.3, size = 3)+
  coord_flip()+
  labs(x = "Valor", y = "Destino")

#options(scipen = 999)



# 3 - Qual é a quantidade de viagens por mês?

#Criando um dataframe com a quantidade de viagens por Ano/mês
p3 <- viagens %>%
  group_by(data.inicio.formatada) %>%
  summarise(qtd = n_distinct(Identificador.do.processo.de.viagem))

names(p3) <- c("DiaMes", "Qtd")
head(p3)

#Criando o gráfico
ggplot(p3, aes(x = DiaMes, y = Qtd, group = 1))+
  geom_line()+
  geom_point()



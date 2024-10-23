### TRANSFORMAÇÃO DOS DADOS OBTIDOS

#Convertendo o tipo do dato para tipo Date
?as.Date

viagens$data.inicio <- as.Date(viagens$Período...Data.de.início, "%d/%m/%Y")

glimpse(viagens)


#Formatando a data de inicio - para utilizar apenas Ano/Mês
?format
viagens$data.inicio.formatada <- format(viagens$data.inicio, "%Y-%m")
viagens$data.inicio.formatada


### EXPLORAÇÃO DOS DADOS 

#Gerando histograma da coluna passagens
hist(viagens$Valor.passagens)
#nesse formato deu erro
#Error in plot.new() : figure margins too large
## descobri que o erro é de ambiente, basta aumentar o tamanho da aba Plots (direita em baixo) do RStudio e executar novamente

# mostra valores min, max, media da coluna
summary(viagens$Valor.passagens)

# mostra valores em um boxplot
boxplot(viagens$Valor.passagens)

# Calculando o Desvio Padrão
sd(viagens$Valor.passagens)

### nao é mostrado no video
#Outro exemplo de histograma - filtrando valores

#Para esse exemplo serão utilizadas as funções filter e select
?dplyr::filter
?dplyr::select

#Filtrando os valores das passagens - apenas passagens entre 200 e 5000
passagens_fitro <- viagens %>%
  select(Valor.passagens) %>%
  filter(Valor.passagens >= 200 & Valor.passagens <= 5000) 


passagens_fitro
hist(passagens_fitro$Valor.passagens)
### fim do que nao é mostrado

#Verificando os valores min, max, média... da coluna valor
summary(viagens$Valor.passagens)


#Visualizando os valores em um boxplot
boxplot(viagens$Valor.passagens)

#Visualizando os valores das passagens - filtro de 200 a 5000
boxplot(passagens_fitro$Valor.passagens)

#Calculando o desvio padrão
sd(viagens$Valor.passagens)

#Verificar se existem valores não preenchidos nas colunas do dataframe
?is.na

?colSums

colSums(is.na(viagens))


#Verifcar a quantidade de categorias da coluna Situação 

#Converter para factor
viagens$Situação <- factor(viagens$Situação)


str(viagens$Situação)

#Verificar quantidade de registros em cada categoria
table(viagens$Situação)

#Obtendo os valores em percentual de cada categoria
prop.table(table(viagens$Situação))*100




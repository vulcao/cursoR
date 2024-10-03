# dplyr

?iris
#iris é um dataset default para estudo, tem 150 linhas de 5 colunas cada

head(iris)

glimpse(iris)

#filtrando da base iris apenas versicolor
versicolor <- filter(iris, Species == "versicolor")
#dim retorna o numero de linhas
dim(versicolor)
dim(iris)

#seleciona linhas
slice(iris,5:10)

#seleciona intervalo de colunas
select(iris,2:4)
#seleciona tudo menos a coluna Sepal.Width
select(iris, -Sepal.Width)

#criando nova coluna, nesse caso a nova coluna é criada em outro dataset
myiris <- mutate(iris,nova.coluna = Sepal.Length + Sepal.Width)
head(myiris)
myiris[,c("Sepal.Length","Sepal.Width","nova.coluna")]

?arrange
#arrange faz a ordenação dos resultados de um dataset
select(iris,Sepal.Length) %>%
  arrange(Sepal.Length)

?group_by
#agrupamento
#agrupa por Species e mostra a media de Sepal.Length
iris %>% group_by(Species) %>% summarise(mean(Sepal.Length))

?mean #media aritimecica
?summarise

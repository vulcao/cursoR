#criando dataframe com vetores (tm que ter mesmo tamalho)
df <- data.frame(cidades,temperatura)
df

#criando dataframe com lista
df2 <- data.frame(capitais)
df2

#operacoes

#filtro

#retorna 12, q é o valor da linha1, coluna2
df[1,2]
#retorna toda a coluna
df[,2]
#retorna toda a linha
df[3,]
#filtro por intervalo (linhas entre 2 e 3, e colunas 1 e 2)
df2[c(2:3),c(1,3)]

names(df2)
dim(df)
str(df2)

df['cidades']
df2['temperatura']

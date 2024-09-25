#matrizes

m <- matrix(seq(1:25),
            ncol = 5,
            byrow = TRUE,
            dimnames = list(c(seq(1:5)),
                            c('A','B','C','D','E')
                            )
)
m

#filtrar dados
m[c(1:4),c('C','D')]

#Fatores

?factor

UF <- factor(c("DF","SP","PA"))

UF

#Fatores ordenados
grau.instrucao <- factor(c("Nivel Médio",
                           "Superior",
                           "Fundamental"),
                         levels = c("Fundamental",
                                    "Nivel Médio",
                                    "Superior"),
                         ordered = TRUE)

grau.instrucao
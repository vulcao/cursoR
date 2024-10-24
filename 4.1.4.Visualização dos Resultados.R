#Exemplo de utilização do R markdown

#Na linguagem R é possível usar o Markdown para formatar os seus relatórios


#Instalação do Rmarkdown
install.packages("rmarkdown")
install.packages('tinytex')
library(tinytex)

#esta linha poderá levar alguns minutos para terminar a execução
#acompanhe o progresso na aba console e aguarde a instalação ser finalizada
tinytex::install_tinytex()


# Próximos passos
# (... o RStudio acusou a necessidade de instalar alguns pacotes antes disso)
# Criar um arquivo R Markdown: File > New File RMarkdown
# Criar script
# Gerar Relatório: Knit > Knit to PDF

#Nesse ponto nao consegui vançar, estou instalando a versão  2024-09-23 do RStudio, pra ver se tem resultado

#Acabei achando a necessidade de instalar o RTools para a minha versão do R
## Pra saber a versão -> R.version.string
#O instalador tem no site mesmo: https://cran.rstudio.com/bin/windows/Rtools/
#Depois de instalar o RTools, ainda assim tive q instalar o knith e o rmarkdown com os comandos abaixo
install.packages("knitr")
install.packages("rmarkdown")

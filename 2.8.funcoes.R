#funcoes

#declara funcao
par.impar <- function(num){
  if ( (num %% 2) == 0 ){
    return ("Par")
  } else {
    return ("Impar")
  }
}
#usa funcao
num = 6
par.impar(num)


#funcao dentro de um loop
for(i in seq(5)){
  print( par.impar((i)) )
}

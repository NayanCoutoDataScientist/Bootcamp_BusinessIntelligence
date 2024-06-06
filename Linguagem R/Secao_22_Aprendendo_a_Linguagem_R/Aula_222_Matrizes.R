# Matrizes

amostra2 <- matrix(1:10, ncol=5)
amostra2

amostra3 <- matrix(1:10, ncol=5, byrow = T) # byrow, ordenada por linha
amostra3

length(amostra2) # tamanho da matriz

dim(amostra2) # dimensões da matriz

nrow(amostra2) # quantidade de linhas

ncol(amostra2) # quantidade de colunas

amostra2[2,3] # elementos da linha X coluna

amostra2[,3] # elemento da coluna

amostra2[1,] # elemento da linha

amostra2[1:2, 2:4] # mostra uma matriz das seleções linha X coluna

dimnames(amostra2) <- list(c("linha1", "linha2"), c("Coluna1", "Coluna2", "Coluna3", "Coluna4", "Coluna5")) # Altera os nomes das linhas e das colunas

amostra3 <- cbind(1:3, 10:15) # altera a matriz com os argumentos determinados cbind(argum1, argum2)

apply(amostra2, 1, sum) # retorna uma operação matemática nas linhas da matriz, neste caso soma.

rowSums(amostra2) # retorna a soma dos elementos das linhas

apply(amostra2, 2, sum) # retorna uma operação matemática nas colunas da matriz, neste caso soma.

colSums(amostra2) # retorna a soma dos elementos das linhas

colMeans(amostra2) # média da coluna da matriz.

rowMeans(amostra2) # média dos elementos da linha.

amostra2+amostra3 # soma as matrizes

amostra2-amostra3 # subtrai as matrizes

amostra2*amostra3 # multiplica as matrizes

amostra2/amostra3 # divide as matrizes
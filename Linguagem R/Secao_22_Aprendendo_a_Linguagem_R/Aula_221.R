#221. Operações com Objetos do R, Trabalhando com Vetores

# Objetos em R:
# Vetores (tipo único); Matrizes (tipo único); Data Frame (misto); Listas (misto);
# Funções;
dados <- sin(9.7979)
dados

dados = sin(9.7979)
dados

# Objetos só apresentam valores quando digitados em comando.

var1 = 656*767
var2 = sqrt(7687)
var3 = var2 - var1
var3

# To.do objeto deve começar por caractere alfabético
# Objetos não podem usar palavras reservadas

# Resultados para dados faltantes
# NA: Not Available; NaN: Not a number; inf e -inf: mais ou menos infinito.
c(99, 0, -3)/0

# Vetores
cidade = c("salvador", "recife", "pernambuco", "maceio", "natal") # a função c() concatena dados
# length(cidade) # a função lenght() informa a quantidade de dados
populacao = c(15000, 20000, 30000, 17000, 23000)
sum(populacao)
max(populacao)
min(populacao)
numero_elementos.cidade = length(cidade)
numero_elementos.cidade
media.cidade = sum(populacao)/numero_elementos.cidade
media.cidade
mean(populacao)

# Repete num1 quarenta vezes
num1 = (1:40)
num1

# Executa a sequência de 10 até 100, saltando de 5 em 5
num2 = seq(10, 100, by=5)
num2

# exibe a informação de TRUE ou FALSE caso o valor contido no vetor seja > 40.
num3=(num2)>40
num3

# exibe quais valores são > 40
num2[num2>40]

# repete o número 10 cinquenta vezes
num4 = rep(10,50)
num4

# repete o número 10 quatro vezes e o 12 sete vezes
num5 = rep(c(10,12), c(4,7))
num5

# acrescentar um deteminado dado ao vetor no início dos dados
num6 = c(7,num5)
num6

# acrescentar ao final dos dados
num7 = c(num5, 78)
num7

# mesclar caractere ao vetor, porém o vetor se transforma em caractere
num_palavra = c("bahia", num5)
num_palavra

# realizar calculos sequencialmente com o vetor
num8 = num6 + 2:13
num8

# repetir elementos  por quantidade específica de vezes
rep(5:9, each=3)

# repetir uma sequência  por quantidade específica de vezes
rep(5:9, 3)

# exibe os quatro primeiro elementos de um vetor
num6[1:4]

# ESTATÍSTICA
# Exibe uma amostra extraída de uma distribuição normal de média 400 e desvio padrão 30
amostra <- round(rnorm(n=10, m=400, sd=30))
amostra

# Exibe dos dados do vetor ao contrário
rev(amostra)

# Exibe os dados do vetor de forma ascendente
sort(amostra)

# Exibe o posicionamento original de ordem dos dados da amostra
order(amostra)

# Retorna as posições específicas de um vetor que obedece ao um determinado critério
which(amostra<400)

# Eliminar um determinado dado de um vetor, basta colocar a posição desse entre parênteses
amostra[-2]
amostra2 <- amostra[-2]
amostra2 == amostra

# Obs: sempreq uqer se desejar acessar um determinado valor em um vetor, utilizar Colchetes[]. Para acessar mais de
# um valor use "C" para concatenar dentro dos colchetes [c(4,7, ...)]
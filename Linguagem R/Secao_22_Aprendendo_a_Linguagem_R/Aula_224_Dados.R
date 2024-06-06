# Trabalhando com leitura de arquivos externos

arquivo1=edit(data.frame()) #Abre um data frame gráfico
arquivo1

# Specify the correct separator and other parameters
data <- read.table("Arquivos-videoaulas/Empresas-Arquivo1.csv", sep = ";", header = TRUE)

Empresas_Arquivo1 <- read.delim("Arquivos-videoaulas/Empresas-Arquivo1.csv", sep = ";", header = TRUE)

help(read.csv) # lista de reads

data() # lista de datasets

install.packages('RODBC') # pacotes de leitura de bancos de dados

# Exemplo de leitura de bancos de dados:
myconn <- odbcConnect("fornecedor", uid="fornec", pwd="34rt#yt") # conecta ao banco
vendedorbd <- sqlFetch(myconn, Vendedor) # copia a tabela vendedor para o dataframe
produtosbd <- sqlQuery(myconn, "select * from Produto where Produto.totestoque>20") # faz um select da tabela produto
close(myconn) # fecha o banco de dados


# Sumarizando Dados
vendas = read.csv2('Arquivos-videoaulas/Vendas-Arquivo2.csv')
table(vendas$FILIAL) # contagem de frequências
head(vendas) # lista as primeiras linhas

vendas$DESCONTO = vendas$VALOR*0.1 # Cria uma nova coluna com novos atributos
head(vendas)

table(vendas$FILIAL, vendas$PRODUTO) # Cria uma matriz com informações cruzadas

tabela = table(vendas$FILIAL, vendas$PRODUTO)
tabela.relativa = tabela/nrow(vendas)*100 # distribuição de frequência relativa %
tabela.relativa

tapply(vendas$PESOGRAMAS, vendas$FILIAL, mean) # aplica uma função por agrupamento
tapply(vendas$PESOGRAMAS, vendas$FILIAL, sum)

summary(vendas$PESOGRAMAS) # Retorna um conjunto de estatísticas das variáveis

# Medidas de estatística descritiva
mean(vendas$PESOGRAMAS) # Média
median(vendas$PESOGRAMAS) # Mediana
min(vendas$PESOGRAMAS) # Mínimo
max(vendas$PESOGRAMAS) # Máximo
range(vendas$PESOGRAMAS) # Máximo-Mínimo
quantile(vendas$PESOGRAMAS) # Quartís
IQR(vendas$PESOGRAMAS) # Indice Interquartil Q75%-Q25%
var(vendas$PESOGRAMAS) # Variância
sd(vendas$PESOGRAMAS) # Desvio Padrão
mad(vendas$PESOGRAMAS) # desvio Absoluto Mediano

save.image() # Salva o Workspace

load(".RData") # Carrega o Work

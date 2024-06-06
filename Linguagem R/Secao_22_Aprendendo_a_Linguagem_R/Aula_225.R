# Selecionando Dados

load(".RData") # Carrega o Work

which(vendas$FILIAL == "Salvador") # Retorna os registros do dataframe
print('')
vendas[which(vendas$FILIAL == "Salvador"),] # Retorna dos valores selecionados ao registro con filtro
print('')
vendas[which(vendas$FILIAL != "Salvador"),]
print('')
vendas[which(vendas$FILIAL == "Salvador" & vendas$PRODUTO == "Boneca"),]
print('')
vendas[which(vendas$FILIAL == "Salvador" | vendas$PRODUTO == "Boneca"),]
print('')
vendas[which(vendas$PESOGRAMAS >= 210 & vendas$PESOGRAMAS <= 310),]
print('')

options(max.print=5.5E5) # Altera a quantidade de linhas impressas

sort(head(vendas[which(vendas$PESOGRAMAS >= 210 & vendas$PESOGRAMAS <= 310),]$PESOGRAMAS, n=1000L))

ordem.vendas=order(vendas$PESOGRAMAS)
vendas[ordem.vendas,] # ordem crescente
vendas[order(vendas$PESOGRAMAS, decreasing = TRUE),]

resultado = ifelse(
  vendas$VALOR>90&vendas$PESOGRAMAS>200, "acima das expectativas", "abaixo das expectativas"
)
table(resultado) #conta o agrupamento dos valores

# 11 - Graficos
# Histograma
hist(vendas$PESOGRAMAS)
hist(vendas$PESOGRAMAS, col = "blue") # histograma

hist(vendas$PESOGRAMAS, col = "blue", probability = T) # densidade de probabilidade
lines(density(vendas$PESOGRAMAS), col='red') # linha de distribuição dos valores

stem(vendas$PESOGRAMAS) #gráfico de valores

# Boxplot
boxplot(vendas$PESOGRAMAS) # Gráfico boxplot
boxplot(PESOGRAMAS ~ PRODUTO, data=vendas) # Gráfico boxplot
par(mar=c(5,4,4,2))

# Dispersão
plot(vendas$PESOGRAMAS, vendas$VALOR)
scatter.smooth(vendas$PESOGRAMAS, vendas$VALOR) # tendêncida dos dados
scatter.smooth(vendas$PESOGRAMAS, vendas$VALOR, type = "p", col = "red", main = "PLOT DOS DADOS", lwd = 5)
plot(vendas$VALOR, vendas$PESOGRAMAS, col=c("red","blue"))
stripchart(vendas$VALOR ~ vendas$FILIAL, vertical = TRUE, method = "stack") # dispersão agrupado

# Gráfico de Barras
par(mar=c(5,4,4,2))

vendas.freq = table(vendas$PRODUTO)
barplot(vendas.freq, col = colors)
barplot(vendas.freq, col = colors, main="PRODUTOS")

example(barplot) # para conhecer as formas e qualquer tipo de gráfico

# Gráfico de Pizza
par(mar=c(5,4,4,2))
pie(vendas.freq, col=c('purple', 'violetred1', 'green3', 'cornsilk', 'cyan'), main="PRODUTOS")

# dividir gráficos
par(mfrow=c(2,2))
barplot(vendas.freq, col=c('purple', 'violetred1', 'green3', 'cornsilk', 'cyan'), main="PRODUTOS")
pie(vendas.freq, col=c('purple', 'violetred1', 'green3', 'cornsilk', 'cyan'), main="PRODUTOS")

save.image() # Salva o Workspace
load(".RData") # Carrega o Work

# Programação Estruturada

#Função
ganho = function(x, n)
{
  sample(x, n, replace=T)
}

informe = c("Brasil", "Alemanha", "Inglaterra")
ganho(informe, 10)

# For
fibonacci = numeric(0)
fibonacci[c(1,2)] = 1
for (x in 3:12)
{
  fibonacci[x] = fibonacci [x-2] + fibonacci [x-1]
}
fibonacci

megasena = function(numjogos)
{
  numeros = matrix(NA, 6, numjogos)
  for(x in 1: numjogos)
  {
    numeros[,x] <- sample(1:60, 6)
  }
  return(numeros)
}

megasena(20)


# Estatística
cidadao <- read.table("Arquivos-videoaulas/Cidadao-Arquivo3.csv", sep = ";", header = TRUE)
head(cidadao)

cidadao$Est.civil=factor(cidadao$Est.civil, label = c("solteiro",
"casado"),levels = 1:2) # converte as variaveis qualitativas de ordinal para nominais
cidadao$Est.civil

cidadao$Grau.Instrucao=factor(cidadao$Grau.Instrucao, label =
c("1Grau","2Grau"),level = 1:2, ordered = T)
cidadao$Grau.Instrucao

cidadao$regiao <- factor(cidadao$regiao, label = c("capital",
"interior","outro"), lev = c(2,1,3))
cidadao$regiao

cidadao

cidadao=transform(cidadao,aumento.sal=Salario*1.20) # cria uma nova variável

# Analise Univariada
civil=table(cidadao$Est.civil) # frequência absoluta
civil

prop.table(civil) # frequência relativa

pie(prop.table(civil)) # Gráfico de setores

names(civil)[which.max(civil)] # moda

# Distribuição de dados de variável contínua
range(cidadao$Salario) # limites
nclass.Sturges(cidadao$Salario) # qtd de classes
salario.fr <- table(cut(cidadao$Salario, seq(4.00, 11.06, l = 7))) # frequência acumuladas
salario.fr
prop.table(salario.fr)# frequência acumuladas relativas

# Análise bivariada
# Análise Qualitativa x Qualitativa
tab.cr = table(cidadao$Est.civil, cidadao$Grau.Instrucao)
tab.cr
addmargins(tab.cr,margin=)

prop.table(tab.cr,margin=) # frquência relativa
prop.table(tab.cr,margin=1)
prop.table(tab.cr,margin=2)

barplot(tab.cr, legend = T) # gráficos para Grau de instrução x Estado Civil
barplot(t(tab.cr), legend = T) # gráficos do inverso
barplot(prop.table(tab.cr), beside = T, legend = T) # gráfico de barras separado por Grau de instrução

summary(tab.cr) # qui-quadrado

# Análise Qualitativa x Quantitativa
quantile(cidadao$Salario) # quartis
salario.qt=cut(cidadao$Salario, quantile(cidadao$Salario),
include.lowest = T) # gerar as classes
tab.sl=table(cidadao$Grau.Instrucao,salario.qt)
tab.sl

prop.table(tab.sl,margin=1) # Frequência relativa
prop.table(tab.sl,margin=2)

boxplot(cidadao$Salario~cidadao$Grau.Instrucao)
tapply(cidadao$Salario,cidadao$Grau.Instrucao, mean) # média
tapply(cidadao$Salario,cidadao$Grau.Instrucao, sd) # desvio padrão

# Análise Quantitativa vs Quantitativa
idade.qt=cut(cidadao$Idade,quantile(cidadao$Idade),include.lowest = T) # gerar as classes
table(idade.qt,salario.qt) # absoluto
prop.table(table(idade.qt,salario.qt),margin=1) # relativo
prop.table(table(idade.qt,salario.qt),margin=2)
plot(cidadao$Idade,cidadao$Salario)

cor(cidadao$Idade,cidadao$Salario) # correlação linear
cor(cidadao$Idade,cidadao$Salario,method = "spearman") # correlação spearman
cor(cidadao$Idade,cidadao$Salario,method = "pearson")
save.image() # Salva o Workspace
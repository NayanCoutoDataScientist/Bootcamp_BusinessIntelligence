# 227. Teste de Hipóteses e Regressão Linear e Múltipla
load(".RData") # Carrega o Work

'1) Média de uma distribuição normal com variância desconhecida'
chute=c(3.7,1.6,4.2,3.3,3.2,4.1,6.1,2.5,3.1,4.3,3.2,4.2,3.1,4.2,5.2,3.2,
4.7,2.1,2.3,2.1,3.1,4.6,2.1,1.5,1.8,2.7,3.1,4.7,2.5,3.4)
t.test(chute)
t.test(chute, alt = "greater", mu = 2, conf.level = 0.99)
print('')

'2) Teste χ2 para aderência à uma certa distribuição'
o <- c(180, 30, 50, 60,80)
e <- c(16,4,6,7,5)/38
chisq.test(o, p = e)
print('')

'3) Comparação de duas médias'
sc=c(0.2,1.2,3.4,2.1,4.5,2.3,5.2,4.2)
pc=c(2.1,2.1,4.2,3.5,2.3,4.2,1.3,0.7)
t.test(sc, pc, var.eq = TRUE, conf = 0.95)
t.test(sc, pc, var.eq = TRUE, conf = 0.95,paired=TRUE)
print('')

'4) Comparação de médias múltiplas pelo teste de Tukey'
escola=`Escola-Arquivo4` <- read.csv("Arquivos-videoaulas/Escola-Arquivo4.csv",
sep=";")
View(`Escola-Arquivo4`)

escola.media=aov(escola$taxa_aprovacao ~ escola$escolas +
escola$professores + escola$escolas:escola$professores, data = escola)
escola.tk=TukeyHSD(escola.media)
escola.tk
print('')

'Regressão Linear Simples'
`Bovinos-Arquivo5` <- read.csv("Arquivos-videoaulas/Bovinos-Arquivo5.csv", sep=";")
bovino=`Bovinos-Arquivo5`
plot(bovino$Quantidade_Racao,bovino$Percentual_proteina)

rls=lm(bovino$Percentual_proteina ~ bovino$Quantidade_Racao)
summary.aov(rls)
summary(rls)
print('')

'Regressão Múltipla'
rlm=lm(bovino$Percentual_proteina ~ bovino$Quantidade_Racao +
bovino$Percentual_Carne_Magra)
summary.aov(rlm)
summary(rlm)

save.image() # Salva o Workspace
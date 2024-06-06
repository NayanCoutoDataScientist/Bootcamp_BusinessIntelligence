# 228. Mineração de Dados e Google VIS \\ datasets ausentes

options (java.home = "C:\\Program Files\\Java\\jre-1.8\\")
library("rJava")
library("RWeka")
arq = read.arff("/Tipo-lente.arff")
arq2 = read.arff("/Jogar_Volei.arff")
view(arq2)
m2 <- J48(`jogar` ~ ., data = arq2)
m2
summary(m2)
Apriori(arq)

arq3 = read.arff('/cpu.arff')
m3 <- M5P(class ~., data = arq3)
plot(m3)
m1 <- J48(vendor ~ ., data = arq3)
summary(m1)
plot(m1)
m1 <- J48(vendor ~ MyCT +CACH, data = arq3)
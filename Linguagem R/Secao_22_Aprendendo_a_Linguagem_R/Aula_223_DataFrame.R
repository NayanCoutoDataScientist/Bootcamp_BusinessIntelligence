# Data Frames
d1 = c(4, 5, 6, 7, 8, 9)
d2 = c("a", "b", "c", "d", "e", "f")
data.frame(d1,d2)


# Listas
lista1 <- list(A = 1:5, B = "BLUMENAU TERRA DO CHOPP", C = matrix(1:4, ncol=4))
lista1

lista1[2] # retorna o objeto da lista

lista1[[2]] # retorna o conteúdo do objeto da lista


# Workspace
save.image() # Salva o Workspace

load("G:/.shortcut-targets-by-id/1-0eJugp2mhHVgylXYxSrV79OPbp72CNB/Cloud Drive/Documentos/Arquivos PDF, PPT, DOC/CURSOS/Super Academia BI/Linguagem R/.RData") # Carrega o Work

citation("dplyr") # Citação acadêmica de um pacote
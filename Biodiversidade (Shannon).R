# Índice de impacto na biodiversidade - Shannon index

library(vegan)
library(readr)

cult_past<- read_csv2("cultivo_past_csv.csv")

View(cult_past)
is.data.frame(cult_past)

shannon<- diversity(cult_past, index = "shannon", MARGIN = 1, base = exp(1))

shannon_exp<- as.data.frame(1/exp(shannon))
shannon_exp

## Exportar csv

file.path<- "C:/Users/borge/OneDrive/Documents/shannon.csv"

write_csv2(shannon_exp, path = file.path)



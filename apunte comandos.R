## Leer datos CSV
Nacimientos <- read.table("/Users/iCristian/R/AMA316/NAC_2016.csv", header=TRUE, sep=";", na.strings="NA", dec=".", strip.white=TRUE)

## Las variables del tipo Factor se entenderán como nominales u ordinales
## Convertir variable numérica a factor
Nacimientos <- within(Nacimientos, {
  SEXO <- factor(SEXO, labels=c('MASCULINO','FEMENINO','INDETERMINADO'))
})


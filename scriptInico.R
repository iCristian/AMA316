Nacidos2016 <- read.table("C:/Users/iCristian/dev/AMA316/AMA316/NAC_2016.csv", header=TRUE, sep=";", na.strings="NA", dec=".", strip.white=TRUE)
Nacidos2016 <- within(Nacidos2016, {
  SEXO <- factor(SEXO, labels=c('MASCULINO','FEMENINO','NA'))
})
Nacidos2016$IMC <- with(Nacidos2016, (PESO/1000)/((TALLA/100)^2))
NacFiltrados <- subset(Nacidos2016, subset=(SEXO!="NA")&((IMC>=7.894913)&(IMC<=19.406267))&(EDAD_M<=40)&(PESO<6000))
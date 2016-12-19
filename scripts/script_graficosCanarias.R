require("lattice")
require("stringr")
raiz <- setwd("~/")
normalizado <- normalizePath(raiz)
data <- read.csv(paste(normalizado,"\\proyecto-final-TIO\\datos\\canarias\\visitantes_canaria.csv",sep=""),header = TRUE)
mydata <- data[c(1:7),]


plot1 <- xyplot(mydata$NOMBRE ~ mydata$X2014,
       main="Visitantes islas Canarias",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2014"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


plot2 <- xyplot(mydata$NOMBRE ~ mydata$X2013,
       main="Visitantes islas Canarias",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2013"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


plot3 <- xyplot(mydata$NOMBRE ~ mydata$X2012,
       main="Visitantes islas Canarias",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2012"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


plot4 <- xyplot(mydata$NOMBRE ~ mydata$X2011,
       main="Visitantes islas Canarias",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2011"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


plot5 <- xyplot(mydata$NOMBRE ~ mydata$X2010,
       main="Visitantes islas Canarias",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2010"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


plot6 <- xyplot(mydata$NOMBRE ~ mydata$X2009,
      main="Visitantes islas Canarias",type = "p",
      pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2009"),
                                title="Año"),ylab = "Isla",xlab = "Visitantes")


for(i in 1:6){
  setwd("~/proyecto-final-TIO/datos/canarias/Graficos")
  archivo <- paste("xyplot",i,sep="")
  extension <- paste(archivo,".png",sep="")
  trellis.device(device="png", filename=extension,height=900,width=1024)
  crea_fichero <- paste("plot",i,sep="")
  plot=eval(parse(text=crea_fichero))
  print(plot)
  dev.off()
}


require("lattice")
require("stringr")
data <- read.csv("C:\\Users\\mal_p\\Documents\\GitHub\\repos\\proyecto-final-TIO\\datos\\londres\\visitantes.csv",header = TRUE)
mydata <- data[c(1:47932),]

plot1 <- xyplot(mydata$Country.of.origin ~ mydata$X2002,
       main="Visitors London (2002)",type = "p",
       pch = 16 ,auto.key = list(x= 0.85, y=0.85, text= c("2002"),
                                title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot2 <- xyplot(mydata$Country.of.origin ~ mydata$X2003,
       main="Visitors London (2003)",type = "p",
       pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2003"),
                                 title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot3 <- xyplot(mydata$Country.of.origin ~ mydata$X2004,
                main="Visitors London (2004)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2004"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot4 <- xyplot(mydata$Country.of.origin ~ mydata$X2005,
                main="Visitors London (2005)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2005"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot5 <- xyplot(mydata$Country.of.origin ~ mydata$X2006,
                main="Visitors London (2006)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2006"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot6 <- xyplot(mydata$Country.of.origin ~ mydata$X2007,
                main="Visitors London (2007)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2007"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot7 <- xyplot(mydata$Country.of.origin ~ mydata$X2008,
                main="Visitors London (2008)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2008"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")


plot8 <- xyplot(mydata$Country.of.origin ~ mydata$X2009,
                main="Visitors London (2009)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2009"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot9 <- xyplot(mydata$Country.of.origin ~ mydata$X2010,
                main="Visitors London (2010)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2010"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot10 <- xyplot(mydata$Country.of.origin ~ mydata$X2011,
                main="Visitors London (2011)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2011"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot11 <- xyplot(mydata$Country.of.origin ~ mydata$X2012,
                main="Visitors London (2012)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2012"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot12 <- xyplot(mydata$Country.of.origin ~ mydata$X2013,
                main="Visitors London (2013)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2013"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot13 <- xyplot(mydata$Country.of.origin ~ mydata$X2014,
                main="Visitors London (2014)",type = "p",
                pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2014"),
                                          title="Year"),ylab = "countries",xlab = "x1000 Visitors")

plot14 <- xyplot(mydata$Country.of.origin ~ mydata$X2015,
                 main="Visitors London (2015)",type = "p",
                 pch = 16 ,auto.key = list(x= 0.80, y=0.85, text= c("2015"),
                                           title="Year"),ylab = "countries",xlab = "x1000 Visitors")

for(i in 1:14){
  setwd("~/")
  archivo <- paste("xyplot",i,sep="")
  extension <- paste(archivo,".png",sep="")
  trellis.device(device="png", filename=extension,height=900,width=1024)
  crea_fichero <- paste("plot",i,sep="")
  plot=eval(parse(text=crea_fichero))
  print(plot)
  dev.off()
}

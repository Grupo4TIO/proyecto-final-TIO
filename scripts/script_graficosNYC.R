# Poner la ruta de donde está el repo
rutaBase <- "D:\\Documentos\\Repos\\Clases\\tio\\proyecto"

rutaCSV <- paste(rutaBase, "/datos/nuevayork/visitantes.csv", sep="")
rutaOutput <- paste(rutaBase, "/datos/nuevayork/Graficos/", sep="")

data <- read.csv(rutaCSV, header=TRUE)

for(i in 2:ncol(data)) {
  visitantes <- data[, c(1, i)]

  png(filename=paste(rutaOutput, i-1, ".png"),
      units="px",
      width=1024,
      height=700,
      pointsize=12,
      res=72)
  plot(visitantes,type="o")
  dev.off()
}

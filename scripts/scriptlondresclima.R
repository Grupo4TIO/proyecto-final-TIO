library (tm)
library (wordcloud)
library (lsa)

#Cargamos ficheros
texto1 <- readLines("D:/Dropbox/4º Ingenieria Informatica/Primer cuatrimestre/TIO/Prácticas/Final/londres/Clima1.txt",encoding="UTF-8")
texto1 = iconv(texto1, to="ASCII//TRANSLIT")

texto2 <- readLines("D:/Dropbox/4º Ingenieria Informatica/Primer cuatrimestre/TIO/Prácticas/Final/londres/Clima2.txt",encoding="UTF-8")
texto2 = iconv(texto2, to="ASCII//TRANSLIT")

#Unimos todos los ficheros bajo una única lista y creamos el corpus
docs <- list(texto1,texto2)
corpus <- Corpus(VectorSource(docs))

#Limpiamos el conjunto de los documentos de numeros, espacios en blanco, etc...
d <- tm_map(corpus, content_transformer(tolower)) #Lo convierte a minúsculas
d <- tm_map(d, removePunctuation) #Elimina signos de puntuación
d <- tm_map(d, removeNumbers) #Elimina los números
d <- tm_map(d, stripWhitespace) #Elimina los espacios en blanco
d <- tm_map(d, removeWords, c("london","weather","climate","temperatures","temperature","year","months",
                              "usually","although","less","day","city","cities","likely","capital","normally",
                              "always","however","sometimes","throughout","idea","common",
                              stopwords("english"))) #Elimina palabras vacías en inglés 

#Creamos la matriz de términos
tdm <- TermDocumentMatrix(d)
m = as.matrix(tdm)

# conteo de palabras en orden decreciente
wf <- sort(rowSums(m),decreasing=TRUE)
# crea un data frame con las palabras y sus frecuencias
dm <- data.frame(word = names(wf), freq=wf)
# Frecuencia minima igual a 20

wordcloud(dm$word, dm$freq, min.freq = 1,
          max.words=50, random.order=FALSE, colors=brewer.pal(8,"Dark2"))

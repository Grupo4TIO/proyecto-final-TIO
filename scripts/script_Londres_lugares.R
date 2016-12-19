library (tm)
library (wordcloud)
library (lsa)

#Cargamos ficheros
raiz <- setwd("~/")
texto1 <- readLines(paste(raiz,"/proyecto-final-TIO/datos/londres/Lugares1.txt",sep = ""),encoding="UTF-8")
texto1 = iconv(texto1, to="ASCII//TRANSLIT")

texto2 <- readLines(paste(raiz,"/proyecto-final-TIO/datos/londres/Lugares2.txt",sep = ""),encoding="UTF-8")
texto2 = iconv(texto2, to="ASCII//TRANSLIT")

texto3 <- readLines(paste(raiz,"/proyecto-final-TIO/datos/londres/Lugares3.txt",sep = ""),encoding="UTF-8")
texto3 = iconv(texto2, to="ASCII//TRANSLIT")
#Unimos todos los ficheros bajo una única lista y creamos el corpus
docs <- list(texto1,texto2,texto3)
corpus <- Corpus(VectorSource(docs))

#Limpiamos el conjunto de los documentos de numeros, espacios en blanco, etc...
d <- tm_map(corpus, content_transformer(tolower)) #Lo convierte a minúsculas
d <- tm_map(d, removePunctuation) #Elimina signos de puntuación
d <- tm_map(d, removeNumbers) #Elimina los números
d <- tm_map(d, stripWhitespace) #Elimina los espacios en blanco
d <- tm_map(d, removeWords, c("london","londons","abbey","cast","count","end","fine","inside",
                              "mall","new","plan","rich","sir","stay","top","war","aboard",
                              "bell","child","cutty","entry","full","high","just","map","now","port","roles",
                              "speech","tour","youll","years","yearold","years","written","cocacola","share",
                              "visit","free","exploring","views","tickets","one","time","also","known","see",
                              "pauls","two","take","big","home",
                              stopwords("english"))) #Elimina palabras vac�?as en inglés 

#Creamos la matriz de términos
tdm <- TermDocumentMatrix(d)
m = as.matrix(tdm)

# conteo de palabras en orden decreciente
wf <- sort(rowSums(m),decreasing=TRUE)
# crea un data frame con las palabras y sus frecuencias
dm <- data.frame(word = names(wf), freq=wf)
# Frecuencia minima igual a 20

counts <- table (dm$word)
�
wordcloud(dm$word, dm$freq, min.freq = 1,
          max.words=50, random.order=FALSE, colors=brewer.pal(8,"Dark2"))

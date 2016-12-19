library (tm)
library (wordcloud)
library (lsa)


###FICHEROS DE CLIMA
#txt clima1
Lugares1 <- readLines("C:/Users/Moi/Desktop/Lugares1.txt",encoding="UTF-8")
Lugares1 = iconv(Lugares1,to="ASCII//TRANSLIT")
#txt clima2
Lugares2 <- readLines("C:/Users/Moi/Desktop/Lugares2.txt",encoding="UTF-8")
Lugares2 = iconv(Lugares2,to="ASCII//TRANSLIT")
#txt clima3
Lugares3 <- readLines("C:/Users/Moi/Desktop/Lugares3.txt",encoding="UTF-8")
Lugares3 = iconv(Lugares3,to="ASCII//TRANSLIT")
#txt clima4
Lugares4 <- readLines("C:/Users/Moi/Desktop/Lugares4.txt",encoding="UTF-8")
Lugares4 = iconv(Lugares4,to="ASCII//TRANSLIT")
#txt clima5
Lugares5 <- readLines("C:/Users/Moi/Desktop/Lugares5.txt",encoding="UTF-8")
Lugares5 = iconv(Lugares5,to="ASCII//TRANSLIT")

Lugares6 <- readLines("C:/Users/Moi/Desktop/Lugares6.txt",encoding="UTF-8")
Lugares6 = iconv(Lugares6,to="ASCII//TRANSLIT")

Lugares <- list(Lugares1,Lugares2,Lugares3,Lugares4,Lugares5,Lugares6)
corpus<-Corpus(VectorSource(Lugares))

d<-tm_map(corpus,content_transformer(tolower))
d<-tm_map(d,stripWhitespace)
d<-tm_map(d,removePunctuation)
d<-tm_map(d,removeNumbers)
d<-tm_map(d,removeWords,c("aao","puedes","turastica","wwwtenerifeaccesibleorg","tambiacn","dos","precipitacian","sharm","dalaman","aunque","canarias","hacia","estacian","aerop","haciasanta","wwg","daa","izaaa","smn","asa","ello","esta","cadigo","mas","daas","tac","aoc","rep","nao","salo","taonez","turquaa","omm","cruz",stopwords("spanish")))



tdm<-TermDocumentMatrix(d)
m=as.matrix(tdm)


wf<-sort(rowSums(m),decreasing = TRUE)
dm<-data.frame(word=names(wf),freq=wf)

wordcloud(dm$word, dm$freq, min.freq = 1,max.words=100, random.order=FALSE, colors=brewer.pal(8,"Dark2"))


library(tm)
library(wordcloud)


###FICHEROS DE CLIMA
#txt clima1
clima1 <- readLines("C:/Users/alex_/Desktop/ScriptRCanarias/Clima1.txt",encoding="UTF-8")
clima1 = iconv(clima1,to="ASCII//TRANSLIT")
#txt clima2
clima2 <- readLines("C:/Users/alex_/Desktop/ScriptRCanarias/Clima2.txt",encoding="UTF-8")
clima2 = iconv(clima2,to="ASCII//TRANSLIT")
#txt clima3
clima3 <- readLines("C:/Users/alex_/Desktop/ScriptRCanarias/Clima3.txt",encoding="UTF-8")
clima3 = iconv(clima3,to="ASCII//TRANSLIT")
#txt clima4
clima4 <- readLines("C:/Users/alex_/Desktop/ScriptRCanarias/Clima4.txt",encoding="UTF-8")
clima4 = iconv(clima4,to="ASCII//TRANSLIT")
#txt clima5
clima5 <- readLines("C:/Users/alex_/Desktop/ScriptRCanarias/Clima5.txt",encoding="UTF-8")
clima5 = iconv(clima5,to="ASCII//TRANSLIT")

clima <- list(clima1,clima2,clima3,clima4,clima5)
corpus<-Corpus(VectorSource(clima))

d<-tm_map(corpus,content_transformer(tolower))
d<-tm_map(d,stripWhitespace)
d<-tm_map(d,removePunctuation)
d<-tm_map(d,removeNumbers)
d<-tm_map(d,removeWords,c("aao","dos","precipitacian","sharm","dalaman","aunque","canarias","hacia","estacian","aerop","haciasanta","wwg","daa","izaaa","smn","asa","ello","esta","cadigo","mas","daas","tac","aoc","rep","nao","salo","taonez","turquaa","omm","cruz",stopwords("spanish")))



tdm<-TermDocumentMatrix(d)
m=as.matrix(tdm)


wf<-sort(rowSums(m),decreasing = TRUE)
dm<-data.frame(word=names(wf),freq=wf)

wordcloud(dm$word, dm$freq, min.freq = 1,max.words=100, random.order=FALSE, colors=brewer.pal(8,"Dark2"))
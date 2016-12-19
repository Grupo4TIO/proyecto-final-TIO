library(tm)
library(lsa)
library(wordcloud)

rutaBase <- "D:\\Documentos\\Repos\\Clases\\tio\\proyecto"
ciudad <- "nuevayork"

getFile <- function (path) {
  file <- readLines(path, encoding="UTF-8")
  file = iconv(file, to="ASCII//TRANSLIT")
  return (file)
}

join <- function (list) {
  return (paste(list, collapse = ''))
}

getfiles <- function (rutaBase, ciudad, cantidad) {
  algo <- ""
  data <- 1:cantidad

  for (i in 1:cantidad) {
    rutaFinal <- paste(rutaBase, "/datos/", ciudad ,"/Clima", i ,".txt", sep="")
    tempData <- getFile(rutaFinal)
    data[i] = join(tempData)
  }

  return (join(data))
}

cleanCorpus <- function (corpus) {
  d <- tm_map(corpus, content_transformer(tolower))
  d <- tm_map(d, stripWhitespace)
  d <- tm_map(d, removePunctuation)
  d <- tm_map(d, removeWords, stopwords('english'))
  d <- tm_map(d, removeWords, c("will"))
  return (d)
}

data <- getfiles(rutaBase, ciudad, 2)

corpus <- Corpus(VectorSource(data))
d <- cleanCorpus(corpus)
tdm <- TermDocumentMatrix(d)

m = as.matrix(tdm)
wf <- sort(rowSums(m), decreasing=TRUE)
dm <- data.frame(word = names(wf), freq=wf)
findFreqTerms(tdm, lowfreq=20)
wordcloud(dm$word, dm$freq, min.freq = 1, max.words=50, random.order=FALSE, colors=brewer.pal(8,"Dark2"))

file.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
destfile<-"jeff.jpg"
download.file(file.url, destfile, method="curl")
library(jpeg)
picture<-readJPEG("jeff.jpg", TRUE)
quantile(picture, probs=c(0.3, 0.8))

file.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destfile<-"GDP.csv"
download.file(file.url, destfile, method="curl")
gdp<-read.csv("GDP.csv")
file.url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
destfile<-"edu.csv"
download.file(file.url2, destfile, method="curl")
edu<-read.csv("edu.csv")
View(gdp)
View(edu)
mergedata<-merge(gdp, edu, by.x="X", by.y="CountryCode", sort=TRUE)
View(mergedata)
str(mergedata)
mergedata$Gross.domestic.product.2012 = as.numeric(as.character(mergedata$Gross.domestic.product.2012))
mergedata2<-arrange(mergedata, desc(Gross.domestic.product.2012))
View(mergedata2)
#Q4
mergedata3<-filter(mergedata2, !is.na(Gross.domestic.product.2012))
mean(mergedata3[mergedata3$Income.Group=="High income: nonOECD",]$Gross.domestic.product.2012)
mean(mergedata3[mergedata3$Income.Group=="High income: OECD",]$Gross.domestic.product.2012)
#Q5
q<-quantile(mergedata3$Gross.domestic.product.2012, probs=c(0.2,0.4,0.6,0.8,1))
q1<-mergedata3$Gross.domestic.product.2012<=38
xtabs(q1~ mergedata3$Income.Group)

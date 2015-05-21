file.url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destfile<-"ACS.csv"
download.file(file.url, destfile, method="curl")
ACS<-read.csv("ACS.csv")
head(ACS)
Agriculturelogical<-(ACS$ACR==3 & ACS$AGS==6)
or
Agriculturelogical<-ifelse(ACS$ACR==3 & ACS$AGS==6, TRUE, FALSE)
whcih(Agriculturelogical)

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
destfile<-"NGAP.xlsx"
#download file from the URL
download.file(fileurl, destfile, method="curl")
#load the package to read xlsx file
library(xlsx)
#specifiy the rows and columns to import
rowIndex<- 18:23
colIndex<- 7:15
#read the xlsx file
dat<-read.xlsx("NGAP.xlsx", sheetIndex=1, rowIndex=rowIndex, colIndex=colIndex)
#perform the quesiton
sum(dat$Zip*dat$Ext,na.rm=T)

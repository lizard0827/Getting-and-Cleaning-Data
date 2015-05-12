setwd("/Users/lizard0827/Desktop/class/Getting and Cleaning data/")
fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
destfile<-"acs.csv"
download.file(fileurl, destfile, method="curl")
library(sqldf)
acs<-read.csv("acs.csv")
head(acs)
sqldf("select pwgtp1 from acs where AGEP < 50")

fileurl<-("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv ")
destfile<-"ACS.csv"
download.file(fileurl, destfile, method"curl")
ACS<-read.csv("ACS.csv")
# length function
length(ACS$VAL[!is.na(ACS$VAL) & ACS$VAL==24])
# subset funciton
data<-subset(ACS, VAL>23)
length(data$VAL==24)

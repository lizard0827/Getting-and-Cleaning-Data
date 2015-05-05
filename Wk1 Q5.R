fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
destfile<-"ACSurvey.csv"
download.file(fileurl, destfile, method="curl")
#load the data.table package
library(data.table)
DT<-fread("ACSurvey.csv")
#time the processes
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))
system.time(DT[,mean(pwgtp15),by=SEX])
system.time(mean(DT$pwgtp15,by=DT$SEX))
system.time(rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2])
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))

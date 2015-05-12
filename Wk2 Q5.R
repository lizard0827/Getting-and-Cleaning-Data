fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
destfile<-"data"
download.file(fileurl, destfile, method="curl")
# read.fwf= Read a table of fixed width formatted data into a data.frame
# width= giving the widths of the fixed-width fields (of one line)
df<-read.fwf("data", widths=c(12, 7,4, 9,4, 9,4, 9,4), skip=4)
head(df)
sum(df[,4])
# or
sum(df$V4)

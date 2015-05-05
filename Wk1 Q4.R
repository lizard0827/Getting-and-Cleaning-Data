fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
destfile<-"balrest.xml"
download.file(fileurl, destfile, method="curl")
#load the XML library
library(XML)
#read the XML file
doc<-xmlTreeParse("balrest.xml", useInternalNodes=TRUE)
#define the rootnode
rootnode<-xmlRoot(doc)
#get the zipcode data to a list
zipcode<-xpathSApply(rootnode, "//zipcode", xmlValue)
sum(zipcode==21231)

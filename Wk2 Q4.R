hurl<-"http://biostat.jhsph.edu/~jleek/contact.html"
con=url(hurl)
html<-readLines(con)
close(con)
sapply(html[c(10, 20, 30, 100)], nchar)

library(httr)
#Find oauth setting for github
oauth_endpoints("github")
#register with my key and secret
myapp=oauth_app("Github", key="46f88530ef6c6c3cb0c5", 
                secret="ac38811eba6c11327e14fc471fb6d751a6a43eb5")
# Get oauth credentials
github_token<-oauth2.0_token(oauth_endpoints("github"), myapp)
#Use API
gtoken<-config(token=github_token)
req<-GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content<-content(req)

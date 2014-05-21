# Advanced operation
# javascript

# Example from the d3Networks package
# run in seperate R
shiny::runGitHub('d3ShinyExample', 'christophergandrud', port = 5555, launch.browser = FALSE)

remDr$navigate("http://127.0.0.1:5555/")
jsonData <- remDr$executeScript("return JSON.stringify(links);")[[1]]
appData <- fromJSON(jsonData)
sourceData <- lapply(appData, "[[", 'source')
sapply(sourceData, names)
library(plyr)
sourceDF <- ldply(sourceData, as.data.frame)

head(sourceDF)



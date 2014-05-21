# Advanced operation
# Interacting with shiny apps
# dialect map
fprof <- getFirefoxProfile("firefoxProfiles/firebugprof/", useBase = TRUE)
remDr <- remoteDriver(extraCapabilities = fprof)
remDr$open()
remDr$navigate("http://spark.rstudio.com/jkatz/SurveyMaps/")
webElem <- remDr$findElement("id", "qselect")
webElem$highlightElement()
optElems <- webElem$findChildElements("css selector", "option")
optElems[[120]]$clickElement()
optElems[[50]]$clickElement()

remDr$findElement("id", "pick3")$clickElement()
cityElems <- remDr$findElements("css selector", "#city>option")
length(cityElems)
cityElems[[501]]$clickElement()
cityElems[[501]]$getElementAttribute("outerHTML")

# shinytestapp
remDr$open()
remDr$navigate("http://spark.rstudio.com/johnharrison/shinytestapp/")
webElem <- remDr$findElement("id", "ctrlSelect1")

webElem <- remDr$findElement("id", "ctrlSelect3")
webElem$clickElement()
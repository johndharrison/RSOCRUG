require(RSelenium)
user <- "rselenium0" # Your Sauce Labs username
pass <- "e8fdf927-4c8e-4d6b-84a2-71a4838d85fb" # Your Sauce Labs access key 
port <- 80
ip <- paste0(user, ':', pass, "@ondemand.saucelabs.com")
rdBrowser <- "chrome"
version <- "33"
platform <- "OS X 10.9"
extraCapabilities <- list(name = "OCRUG RSelenium webinar", username = user
                          , accessKey = pass, tags = list("RSelenium-webinar", "OCRUG"))
remDr <- remoteDriver$new(remoteServerAddr = ip, port = port, browserName = rdBrowser
                          , version = version, platform = platform
                          , extraCapabilities = extraCapabilities)


testAppScript <- function(remDr){
  remDr$open()
  remDr$setImplicitWaitTimeout(2000) # wait for elements for 2 seconds
  remDr$navigate("http://spark.rstudio.com/johnharrison/shinytestapp/")
  Sys.sleep(2)
  # highlight the labels
  webElems <- remDr$findElements("css selector", "#ctrlSelect span")
  lapply(webElems, function(x){x$highlightElement()})
  Sys.sleep(2)
  appIds <- c("summary", "distPlot", "ggPlot", "dttable")
  # Click each checkbox and check for its output
  lapply(seq_along(webElems), function(x){
    if(!webElems[[x]]$isElementSelected()[[1]]){
      webElems[[x]]$clickElement()
      # test for its output
      out <- remDr$findElement("id", appIds[x])
      out$highlightElement()
    }
  })
  
  remDr$close()
}

testAppScript(remDr)

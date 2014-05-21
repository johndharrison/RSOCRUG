# Advanced operation
# remote driving

remDr <- remoteDriver(remoteServerAddr = "128.199.255.233", port = 4444, browserName = 'phantomjs')
remDr$open()
remDr$navigate("http://whatismyipaddress.com/")
remDr$screenshot(display = TRUE)
remDr$close(); remDr$closeServer()
#  Basic operation
# Browser initiation
# firstly make sure a selenium server is running
require(RSelenium)
RSelenium::startServer()

# assign a browser

remDr <- remoteDriver() # firefox
remDr$open()
remDr$navigate("http://www.google.com/ncr")
remDr$close()

# chrome

remDr <- remoteDriver(browserName = "chrome")
remDr$open()
remDr$navigate("http://www.cnn.com")
remDr$close()

# internet explorer

remDr <- remoteDriver(browserName = "internet explorer")
remDr$open()
remDr$navigate("http://www.bbc.co.uk")
remDr$close()

# safari

remDr <- remoteDriver(browserName = "safari")
remDr$open()
remDr$navigate("http://www.r-project.org")
remDr$close()

# opera 
# java -jar -Dos.name=windows
remDr <- remoteDriver(browserName = "opera"
                      , extraCapabilities = list("opera.binary" = "C:\\Program Files\\Opera x64\\opera.exe"))
remDr$open()
remDr$navigate("http://www.yahoo.com")
remDr$close()

# phantomjs

remDr <- remoteDriver(browserName = "phantomjs")
remDr$open()
remDr$navigate("http://phantomjs.org")
remDr$screenshot(display)
remDr$close()

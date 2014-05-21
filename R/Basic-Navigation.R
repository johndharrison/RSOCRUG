#  Basic operation
# Navigation

remDr <- remoteDriver(browserName = "chrome")
remDr$open()
remDr$close()

remDr$open(silent = TRUE)
# session Info 
remDr$sessionInfo

remDr$navigate("http://www.bbc.co.uk")

remDr$navigate("http://www.google.com/ncr")

# go back
remDr$goBack()

# go forward
remDr$goForward()

# refresh the webpage
remDr$refresh()

# get title
remDr$getTitle()[[1]]

> remDr$goBack()
> remDr$getTitle()[[1]]
[1] "BBC - Homepage"

# get current url
> remDr$goForward()
> remDr$getCurrentUrl()[[1]]
[1] "https://www.google.com/"

# Info on OS/ JAVA, selenium
remDr$getStatus()

# cookies
remDr$getAllCookies()

# delete cookie

> remDr$deleteCookieNamed("PREF")
> remDr$getAllCookies()


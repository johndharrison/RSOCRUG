# Basic operations
# Frames and Windows

remDr$navigate("http://www.r-project.org")

frames <- remDr$findElements("css selector", "frame")

htmlParse(remDr$getPageSource()[[1]])

remDr$switchToFrame("logo")
htmlParse(remDr$getPageSource()[[1]])

# go back
remDr$switchToFrame(NULL)
frames <- remDr$findElements("css selector", "frame")
remDr$switchToFrame(frames[[2]])



# open new window

# get handles

remDr$getWindowHandles()
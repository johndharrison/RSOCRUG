#  Basic operation
#  DOM interaction

# by name
remDr$navigate("http://www.google.com/ncr")
webElem0 <- remDr$findElement("name", "q")
webElem0$getElementAttribute("outerHTML")[[1]]

# by id
> webElem0$getElementAttribute("id")[[1]]
[1] "gbqfq"
webElem <- remDr$findElement("id", "gbqfq")

# by class
> webElem0$getElementAttribute("class")[[1]]
[1] "gbqfif"
webElem <- remDr$findElement("class", "gbqfif")

# by css selector
webElem <- remDr$findElement("css selector", ".gbqfif")
webElem <- remDr$findElement("css selector", "#gbqfq")
webElem <- remDr$findElement("css selector", "input.gbqfif")
webElem <- remDr$findElement("css selector", "input#gbqfq")

# by tag name
length(remDr$findElements("tag name", "input"))

# by link text

# get all the anchors
anchorElements <- remDr$findElements("tag name", "a")
sapply(anchorElements, function(x){x$getElementText()[[1]]})

advertAnchor <- remDr$findElement("link text", "Advertising")
advertAnchor$highlightElement()

# partial link text

googleAnchor <- remDr$findElement("partial link text", "oogle")
googleAnchor$highlightElement()

# xpath



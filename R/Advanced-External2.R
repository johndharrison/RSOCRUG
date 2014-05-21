osBrowser <- list("OS X 10.9" = list(browser = list("safari", "firefox")
                                     , version = list('7', '28')),
                  "Windows 8" = list(browser = list("chrome", "firefox", "internet explorer")
                                     , version = list('33', '28', '10')),
                  "Linux" = list(browser = list("chrome", "firefox", "opera")
                                 , version = list('33', '28', '12'))
)
lapply(seq_along(osBrowser), function(x){
  platform <- names(osBrowser)[x]
  lapply(seq_along(osBrowser[[x]]$browser), function(y){
    rdBrowser <- osBrowser[[x]]$browser[[y]]
    version <- osBrowser[[x]]$version[[y]]
    remDr <- remoteDriver$new(remoteServerAddr = ip, port = port, browserName = rdBrowser
                              , version = version, platform = platform
                              , extraCapabilities = extraCapabilities)
    testAppScript(remDr, 10 , appURL)
  })
}) 
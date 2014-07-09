fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"

library(XML)
doc <-htmlTreeParse(fileUrl, useInternal=TRUE)
scores <- xpathSApply(doc, "//li[@class='score']",xmlValue)
teams <- xpathSApply(doc, "//li[@class='team-name']", xmlValue)
scores
teams

## block comments
# http://stackoverflow.com/questions/1231195/multiline-comment-workarounds
# An empty function for Comments
Comment <- function(`@Comments`) {invisible()}

### comments ###
Comment(`
sample runtime

$Rscript 4.R 
Loading required package: methods
list()
 [1] "San Francisco" "Dallas"        "Washington"    "New Orleans"  
 [5] "Cincinnati"    "Pittsburgh"    "Cleveland"     "Carolina"     
 [9] "Indianapolis"  "Tampa Bay"     "Atlanta"       "Cincinnati"   
[13] "Pittsburgh"    "Tennessee"     "New Orleans"   "San Diego"    
[17] "Miami"         "Jacksonville"  "Houston"       "Cleveland"    

`)

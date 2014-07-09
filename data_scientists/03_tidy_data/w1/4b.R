#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
fileUrl <- "http://www.w3schools.com/xml/plant_catalog.xml"

library(XML)
xmlfile <-xmlTreeParse(fileUrl, useInternal=TRUE)
class(xmlfile)

xmltop = xmlRoot(xmlfile)
print(xmltop)[1:2]
#scores <- xpathSApply(doc, "//li[@class='score']",xmlValue)
#teams <- xpathSApply(doc, "//li[@class='team-name']", xmlValue)
#scores
#teams

## block comments
# http://stackoverflow.com/questions/1231195/multiline-comment-workarounds
# An empty function for Comments
Comment <- function(`@Comments`) {invisible()}

### comments ###
Comment(`
sample runtime


`)

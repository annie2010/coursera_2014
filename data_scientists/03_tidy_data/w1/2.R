if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl,destfile="./data/getdata.csv",method="curl")
dateDownloaded <-date()


houseData <-read.csv("./data/getdata.csv", header=TRUE)
##head(houseData)
numbers <- houseData$VAL
as.data.frame(table(numbers))

#numbers <- houseData$VAL

## donwload a file
# http://stat.ethz.ch/R-manual/R-patched/library/utils/html/download.file.html

## comments
# http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Comments

## block comments
# http://stackoverflow.com/questions/1231195/multiline-comment-workarounds
# An empty function for Comments
Comment <- function(`@Comments`) {invisible()}

### comments ###
Comment(`
Usage

download.file(url, destfile, method, quiet = FALSE, mode = "w",
              cacheOK = TRUE,
              extra = getOption("download.file.extra"))
`)

## comments
# http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Comments

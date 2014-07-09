if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl,destfile="./data/getdata.csv",method="curl")
dateDownloaded <-date()


houseData <-read.csv("./data/getdata.csv", header=TRUE)
##head(houseData)
numbers <- houseData$VAL
as.data.frame(table(numbers))

##
# http://stackoverflow.com/questions/1923273/counting-the-number-of-elements-with-the-values-of-x-in-a-vector

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

Sample runtime output

$ Rscript 2.R 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 4147k  100 4147k    0     0  11.3M      0 --:--:-- --:--:-- --:--:-- 11.3M
   numbers Freq
1        1   75
2        2   42
3        3   33
4        4   30
5        5   26
6        6   29
7        7   23
8        8   70
9        9   99
10      10  119
11      11  152
12      12  199
13      13  233
14      14  495
15      15  483
16      16  486
17      17  357
18      18  502
19      19  232
20      20  312
21      21  164
22      22  159
23      23   47
24      24   53


`)

## comments
# http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Comments

if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://darwincore.googlecode.com/files/DwC%20Use%20Case%20-%20Environmental%20Sample%20%28Event%29.xlsx"
download.file(fileUrl,destfile="./data/event.xslx",method="curl")
dateDownloaded <-date()
dateDownloaded

library("xlsx")
eventData <-read.xlsx("./data/event.xslx", sheetIndex=1,header=TRUE)
head(eventData)

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
sample runtime

$Rscript 3.R
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 53931  100 53931    0     0   215k      0 --:--:-- --:--:-- --:--:--  215k
[1] "Wed Jul  9 02:51:09 2014"
Loading required package: rJava
Loading required package: methods

Loading required package: xlsxjars
                                   Basic.Metadata
1                                            <NA>
2            Universally Unique Identifier (UUID)
3                                         * Title
4                 * Publication Date (MM/DD/YYYY)
5                             * Expected Citation
6 * Abstract or concise descripton of the dataset
                                                                                                                                                                                                                                                            Required.fields.are.listed.with.an.asterisk.....next.to.the.field.label
1                                                                                                                                                                                                                                                                                                                              <NA>
2                                                                                                                                                                                                                                                                                                                              <NA>
3                                                                                                                                                                                                                                                                                        Environment readings in Universitetsparken
4                                                                                                                                                                                                                                                                                                                             41417
5                                                                                                                                                                                                                                                                                                                              <NA>
6 This is a very early test of recording environment properties or nature types - where no occurrence of any organism is recorded. Not sure if this will be within the scope of Darwin Core, but I wanted to explore this use case as it may have some merits. This use case was not discussed in group discussion at the workshop.
   NA. NA..1 NA..2 NA..3 NA..4 NA..5  Research.Project NA..6 NA..7   NA..8
1 <NA>  <NA>  <NA>  <NA>  <NA>  <NA>             Title  <NA>  <NA>    <NA>
2 <NA>  <NA>  <NA>  <NA>  <NA>  <NA> Lead Organisation  <NA>  <NA> Country
3 <NA>  <NA>  <NA>  <NA>  <NA>  <NA>       Description  <NA>  <NA>    <NA>
4 <NA>  <NA>  <NA>  <NA>  <NA>  <NA>              <NA>  <NA>  <NA>    <NA>
5 <NA>  <NA>  <NA>  <NA>  <NA>  <NA>              <NA>  <NA>  <NA>    <NA>
6 <NA>  <NA>  <NA>  <NA>  <NA>  <NA>              <NA>  <NA>  <NA>    <NA>
  NA..9 NA..10
1  <NA>     NA
2  <NA>     NA
3  <NA>     NA
4  <NA>     NA
5  <NA>     NA
6  <NA>     NA

`)

## comments
# http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Comments

paste("Date", date())

cat("\n\n1. Default packages\n")
getOption("defaultPackages")

cat("\n\n2. Loaded packages\n")
(.packages())

cat("\n\n3. Available packages\n")
(.packages(all.available=TRUE))

# R
# http://how-to.linuxcareer.com/how-to-install-and-use-packages-in-gnu-r 
# http://stackoverflow.com/questions/4071586/printing-newlines-with-print-in-r

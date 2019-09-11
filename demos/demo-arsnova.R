## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/LaTeX (.Rnw) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("tstat.Rnw", "tstat2.Rnw", "boxplots.Rnw", "function.Rnw", "currency8.Rnw")
## note that the currency exercise is in /UTF-8 encoding


## exams2arsnova --------------------------------------------------------------------
## JSON output in ARSnova format (1 file per exam)
## -> for import into an ARSnova session

## generate ARSnova exam/quiz with one replication per question
## (without allowing abstentions)
exams2arsnova(myexam, n = 1, name = "arsnova-demo",
  dir = "output",
  edir = "exercises",
  abstention = FALSE)

## hint: if the arguments url/sessionkey/jsessionid are specified the JSON output
## can be directly sent to the running ARSnova session (without manually saving and
## importing it)


## ----------------------------------------------------------------------------------

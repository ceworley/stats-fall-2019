## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/LaTeX (.Rnw) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("tstat.Rnw", "tstat2.Rnw", "boxplots.Rnw", "function.Rnw", "boxhist.Rnw", "currency8.Rnw")
## note that the currency exercise is in /UTF-8 encoding


## exams2moodle ---------------------------------------------------------------------
## Moodle XML output (1 file containing all exams)
## -> for import into a Moodle system

## generate Moodle exam with three replications per question
exams2moodle(myexam, n = 3, name = "moodle-demo",
  dir = "output",
  edir = "exercises")

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("exercises/tstat.Rnw")


## ----------------------------------------------------------------------------------

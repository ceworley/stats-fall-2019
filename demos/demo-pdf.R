## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/LaTeX (.Rnw) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("tstat.Rnw", "tstat2.Rnw", "boxplots.Rnw", "function.Rnw", "boxhist.Rnw", "currency8.Rnw")
## note that the currency exercise is in /UTF-8 encoding


## exams2pdf ------------------------------------------------------------------------
## PDF output (1 file per exam)
## -> typically used for quickly checking if an exercise can be converted to PDF
## -> or customized via suitable templates

## generate the PDF version of a single exercise (shown in PDF viewer)
## with default settings
exams2pdf("exercises/tstat.Rnw")

## generate a single PDF exam (shown in PDF viewer)
## with specification of a template (for an exam) %s encoding
exams2pdf(myexam, n = 1,
  edir = "exercises",
  template = "templates/solution.tex")

## generate three PDF exams and corresponding solutions in output directory
## (with the header used to set a custom Date and ID for the exam)
exams2pdf(myexam, n = 3, name = c("pdf-exam", "pdf-solution"),
  dir = "output",
  edir = "exercises",
  template = c("templates/exam.tex", "templates/solution.tex"),
  header = list(
    Date = "2015-01-01",
    ID = function(i) formatC(i, width = 5, flag = "0")
  ))


## ----------------------------------------------------------------------------------

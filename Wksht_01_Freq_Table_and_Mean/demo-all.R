## exams ----------------------------------------------------------------------------

## load package
library("exams")

## this script gives an overview of the example exercises provided
## and basic usage of exams2html/exams2pdf - for more advanced usage
## and further interfaces, see the other demo-*.R scripts

## to get an overview of the available exercises in this demo,
## switch to the "exercises" folder
setwd("exercises")
dir()

## in the following the exercises in R/LaTeX (.Rnw) format are discussed


## inspect individual exercises -----------------------------------------------------

## simply turn a single exercise into a HTML file (shown in browser)
exams2html("tstat.Rnw")
## or a PDF file (shown in PDF viewer)
exams2pdf("tstat.Rnw")

## extract the meta-information to check whether it is processed correctly
exams_metainfo(exams2html("tstat.Rnw"))


## types of exercises ---------------------------------------------------------------

## numeric exercises
exams2html(c(
  "tstat.Rnw",      ## computation of t-statistic
  "dist.Rnw",       ## computation of Euclidean distance
  "regression.Rnw", ## prediction in simple linear regression
  "lagrange.Rnw"    ## optimization under constraint
))

## single choice exercises
exams2html(c(
  "tstat2.Rnw", ## single-choice list of numeric tstat exercise (by hand)
  "dist3.Rnw"   ## single-choice list of numeric dist exercise (via num_to_schoice)
))

## multiple choice exercises
exams2html(c(
  "anova.Rnw",       ## interpret ANOVA results
  "boxplots.Rnw",    ## interpret parallel boxplots
  "scatterplot.Rnw", ## interpret scatterplot
  "ttest.Rnw",       ## 2-sample t-test
  "relfreq.Rnw",     ## table of relative frequencies
  "cholesky.Rnw"     ## Cholesky factorization
))

## string exercises
exams2html(c(
  "function.Rnw", ## names of R functions
  "countrycodes.Rnw"   ## three-letter ISO country codes
))

## cloze exercises (combining several num/schoice/mchoice/string parts)
exams2html(c(
  "boxhist.Rnw",  ## download and describe artificial data (schoice/num)
  "confint2.Rnw", ## compute a confidence interval (num)
  "dist2.Rnw",    ## compute several types of distances (num)
  "fourfold.Rnw"  ## compute all elements of a fourfold table (num)
))


## other interfaces -----------------------------------------------------------------

## switch back to the original folder
setwd("..")

## other interfaces include:
## - exams2pdf for customizable PDF output
## - exams2nops for a fixed PDF format that can be automatically scanned and evaluated
##
## - exams2html for customizable HTML output
## - exams2moodle for Moodle XML that can be imported into Moodle quizzes
## - exams2qti12/exams2qti21 for QTI XML (version 1.2 or 2.1) that can be imported
##   into various learning management systems (e.g., OLAT or OpenOLAT among others)
##
## - exams2arsnova for a JSON format that can be imported into ARSnova live quizzes 

## see the demo-*.R scripts in this directory for more examples
dir()


## ----------------------------------------------------------------------------------

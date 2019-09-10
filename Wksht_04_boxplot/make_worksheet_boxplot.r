library("exams")


q1 = "boxplot_one.Rmd"

probs = c(rep(q1,8))


set.seed(1234)
exams2pdf(probs, 
  n = 1,
  name = "boxplot",
  dir = "output",
  template = "templates/worksheet_sols.tex",     
  header = list(
    Date = "2019-SEP-10",
    ID = function(i) formatC(i, width = 3, flag = "0"),
    Titl = "Boxplots"
  )
  )



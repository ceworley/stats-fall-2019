library("exams")


q1 = "boxplot_one.Rmd"

probs = c(q1,q1)

set.seed(123456)
exams2pdf(probs, 
  n = 22,
  name = c("boxplot_HW","ANS_boxplot_HW"),
  dir = "homework",
  template = c("templates/homework.tex","templates/homework_ans_noprob.tex"),     
  header = list(
    Date = "2019-Sep-11",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



library("exams")


q1 = "hist_reading.Rmd"

probs = rep(q1,2)

set.seed(1234567)
exams2pdf(probs, 
  n = 14,
  name = c("read_hist_HW","ANS_read_hist_HW"),
  dir = "homework_C",
  template = c("templates/homework.tex","templates/homework_ans.tex"),     
  header = list(
    Date = "2019-Sep-17",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



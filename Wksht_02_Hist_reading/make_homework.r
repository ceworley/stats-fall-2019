library("exams")


q1 = "hist_reading.Rmd"

probs = rep(q1,2)


set.seed(23)
exams2pdf(probs, 
  n = 22,
  name = c("read_hist_HW","ANS_read_hist_HW"),
  dir = "homework",
  template = c("homework.tex","homework_ans.tex"),     
  header = list(
    Date = "2019-09-05",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



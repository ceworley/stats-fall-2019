library("exams")


q1 = "hist_reading.Rmd"

probs = rep(q1,2)

set.seed(1234567)
exams2pdf(probs, 
  n = 28,
  name = c("percentile_mean_median_HW","ANS_percentile_mean_median_HW"),
  dir = "homework_B",
  template = c("templates/homework.tex","templates/homework_ans.tex"),     
  header = list(
    Date = "2019-Sep-11",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



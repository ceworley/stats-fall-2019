library("exams")


q1 = "hist_reading.Rmd"

probs = rep(q1,9)


set.seed(12345)
exams2pdf(probs, 
  n = 1,
  name = "read_hist",
  dir = "output",
  template = "worksheet.tex",     
  header = list(
    Date = "2019-09-04",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



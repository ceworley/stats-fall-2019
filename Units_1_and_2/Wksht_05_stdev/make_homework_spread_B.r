library("exams")


q1 = "aad.Rmd"
q2 = "stdev.Rmd"

probs = c(q1,q2)

set.seed(123456)
exams2pdf(probs, 
  n = 28,
  name = c("AAD_and_SD_HW","ANS_AAD_and_SD_HW"),
  dir = "homework_B",
  template = c("templates/homework.tex","templates/homework_ans.tex"),     
  header = list(
    Date = "2019-Sep-16",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



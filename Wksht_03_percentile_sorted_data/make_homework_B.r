library("exams")


q1 = "percentile_sorted_data_index.Rmd"
q2 = "percentile_sorted_data.Rmd"

probs = c(q1,q2)

set.seed(126)
exams2pdf(probs, 
  n = 28,
  name = c("percentile_mean_median_HW","ANS_percentile_mean_median_HW"),
  dir = "homework_B",
  template = c("templates/homework.tex","templates/homework_ans_noprob.tex"),     
  header = list(
    Date = "2019-Sep-11",
    ID = function(i) formatC(i, width = 3, flag = "0")
  )
  )



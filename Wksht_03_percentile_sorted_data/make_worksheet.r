library("exams")


q1 = "percentile_sorted_data_index.Rmd"
q2 = "percentile_sorted_data.Rmd"

probs = c(rep(q1,7),rep(q2,7))


set.seed(123)
exams2pdf(probs, 
  n = 1,
  name = "percentileMeanMedian",
  dir = "output",
  template = "templates/worksheet_sols.tex",     
  header = list(
    Date = "2019-09-04",
    ID = function(i) formatC(i, width = 3, flag = "0"),
    Titl = "Percentile, mean, median"
  )
  )



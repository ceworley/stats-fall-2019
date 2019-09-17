library("exams")


q1 = "sd_rule.Rmd"
q2 = "boxplots_compare.Rmd"

probs = c(q1,q2)


set.seed(123)
exams2pdf(probs, 
  n = 5,
  name = "sd_rule_and_boxplot_compare",
  dir = "wksht",
  template = "templates/worksheet_sols.tex",     
  header = list(
    Date = "2019-SEP-17",
    ID = formatC(1, width = 3, flag = "0"),
    Titl = "SD Rule and comparing boxplots"
  )
  )



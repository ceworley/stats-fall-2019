library("exams")


q1 = "sd_rule5.Rmd"
q2 = "boxplots_compare.Rmd"
q3 = "estimate_mean_SD.Rmd"

probs = c(q1,q2,q3)

set.seed(1234)
exams2pdf(probs, 
  nsamp = 5,
  name = "sd_boxy_mean",
  dir = "wksht",
  template = "templates/worksheet_sols.tex",     
  header = list(
    Date = "2019-SEP-17",
    ID = formatC(1, width = 3, flag = "0"),
    Titl = "SD Rule, comparing boxplots, and estimating mean/sd"
  )
  )



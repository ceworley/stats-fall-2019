library("exams")

q1 = "estimate_mean_SD2.Rmd"
q2 = "estimate_mean_SD2_same.Rmd"
q3 = "compare_centers_spreads_mounds.Rmd"

probs = c(q1,q2,q3,q1,q2,q3,q3)

set.seed(12254)
exams2pdf(probs,
  name = "sd_intuitions",
  dir = "wksht",
  template = "templates/worksheet_sols_end.tex",     
  header = list(
    Date = "2019-SEP-17",
    ID = formatC(1, width = 3, flag = "0"),
    Titl = "SD intuitions"
  )
  )



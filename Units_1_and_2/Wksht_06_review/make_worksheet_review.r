library("exams")

qs = c("aad.Rmd","compare_centers_spreads.Rmd","discrete_dotplot_unsorted.Rmd","freq_reading2.Rmd","hist_reading2.Rmd","percentile_sorted_data.Rmd","stdev.Rmd")

probs = c(sample(qs))

set.seed(12356)
exams2pdf(probs, 
  n = 1,
  name = "review_no_sol",
  dir = "wksht",
  template = "templates/homework.tex",     
  header = list(
    Date = "2019-SEP-19",
    ID = "001"
  )
  )



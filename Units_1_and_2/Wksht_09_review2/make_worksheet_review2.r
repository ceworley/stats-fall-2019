library("exams")

qs = c("aad.Rmd","compare_centers_spreads.Rmd","mounds.Rmd","discrete_dotplot_unsorted.Rmd","freq_reading2.Rmd","hist_reading2.Rmd","percentile_sorted_data.Rmd","stdev.Rmd")

set.seed(12)
probs = c(sample(qs))
exams2pdf(probs, 
  n = 1,
  name = "review2A",
  dir = "wksht",
  template = "templates/worksheet_sols_end.tex",     
  header = list(
    Date = "2019-SEP-19",
    ID = "001",
    Titl = "Review 2A"
  )
  )



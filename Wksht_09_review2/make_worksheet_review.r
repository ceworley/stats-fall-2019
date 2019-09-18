library("exams")

qs = c("aad.Rmd","boxplots_compare.Rmd","compare_centers_spreads.Rmd","discrete_dotplot_unsorted.Rmd","estimate_mean_SD.Rmd","freq_reading2.Rmd","hist_reading2.Rmd","mounds.Rmd","percentile_sorted_data.Rmd","sd_rule5","stdev.Rmd")

set.seed(1235678)
probs = c(sample(qs))
exams2pdf(probs,
  n = 1,
  name = "review_no_sol_2B",
  dir = "wksht",
  template = "templates/homework.tex", 
  header = list(
    Date = "2019-SEP-24",
    ID = "001"
  )
  )

set.seed(12438)
probs = c(sample(qs))
exams2pdf(probs, 
          n = 1,
          name = "review2B",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-SEP-19",
            ID = "001",
            Titl = "Review2B"
          )
)


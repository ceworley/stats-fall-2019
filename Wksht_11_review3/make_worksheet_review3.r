library("exams")

qs = c("aad.Rmd","estimate_mean_SD2_same.Rmd","mounds.Rmd","boxplots_compare.Rmd","estimate_mean_SD.Rmd","percentile_sorted_data.Rmd","compare_centers_spreads_mounds.Rmd","freq_reading2.Rmd","sd_rule5.Rmd","compare_centers_spreads.Rmd","hist_reading2.Rmd","stdev.Rmd","discrete_dotplot_unsorted.Rmd","mids_compare.Rmd","typical_intervals.Rmd")
set.seed(12438)
probs = sample(qs)
exams2pdf(probs,
          name = "Review1C",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-SEP-19",
            ID = "001",
            Titl = "Review1C"
          )
)


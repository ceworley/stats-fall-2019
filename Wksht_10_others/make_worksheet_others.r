library("exams")

qs = c("estimate_mean_SD2_same.Rmd","compare_centers_spreads_mounds.Rmd","sd_rule5.Rmd","typical_intervals.Rmd","boxplots_compare.Rmd","mids_compare.Rmd")

set.seed(12438)
probs = qs
exams2pdf(probs, 
          nsamp = 3,
          name = "center_spread",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-SEP-19",
            ID = "001",
            Titl = "Center and Spread"
          )
)


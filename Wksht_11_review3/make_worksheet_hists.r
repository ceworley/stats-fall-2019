library("exams")

qs = c("continuous_hist_rel.Rmd","continuous_hist_den.Rmd")
set.seed(12438)
probs = sample(qs)
exams2pdf(probs,
          nsamp = 4,
          name = "relfreq_den",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-SEP-19",
            ID = "001",
            Titl = "Relative-Freq and Density Histograms"
          )
)


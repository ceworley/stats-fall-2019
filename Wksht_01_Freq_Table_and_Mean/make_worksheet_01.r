library("exams")



q1 = "discrete_dotplot_unsorted.Rmd"
q2 = "discrete_barplot_unsorted.Rmd"
q3 = "continuous_hist_nearest_int.Rmd"
q4 = "continuous_hist_nearest_mult5.Rmd"

probs = c(q1, q2, q3, q4)


set.seed(12)
exams2pdf(probs, 
          n = 1,
          name = "histograms",
          dir = "output",
          resolution = 300,
          template = "worksheet.tex",
)

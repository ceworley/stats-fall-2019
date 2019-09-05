library("exams")



q1 = "discrete_dotplot_unsorted.Rmd"
q2 = "continuous_hist_nearest_int.Rmd"
probs = c(q1, q2)


set.seed(123)
exams2pdf(probs, 
          n = 22,
          name = "homework",
          dir = "output",
          resolution = 300,
          template = "homework.tex",
)

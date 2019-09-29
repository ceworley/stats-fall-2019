library("exams")


q1 = "discrete_dotplot_unsorted.Rmd"
q2 = "discrete_barplot_unsorted.Rmd"
q3 = "continuous_hist_nearest_int.Rmd"
q4 = "continuous_hist_nearest_mult5.Rmd"
probs = c(q1, q1, q2, q2, q3, q3, q4, q4)

set.seed(123)
exams2pdf(probs, 
          n=1,
          name = "hist_C_wksht",
          dir = "wksht_C",
          resolution = 300,
          texdir = "tex",
          template = "templates/worksheet_sols.tex",
          header = list(
            Date = "2019-09-04",
            ID = function(i) formatC(i, width = 3, flag = "0"),
            Titl = "Frequency Tables, Dot Plots, Histograms"
          )
)

library("exams")

set.seed(123)
qs = c("make_scatter_plot.Rmd")

qs = rep(qs,5)

exams2pdf(qs,
          name = "Regression",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Linear Regression"
          )
)




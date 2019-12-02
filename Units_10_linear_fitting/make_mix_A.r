library("exams")

set.seed(111112)
qs = c("make_scatter_plotB.Rmd","make_scatter_plotC.Rmd")

exams2pdf(qs,
          name = "RegressionB",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Linear Regression"
          )
)




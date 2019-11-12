library("exams")

set.seed(123)
qs = rep("p_ci_crazy.Rmd",8)

exams2pdf(qs,
          name = "p_ci_crazy",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Confidence Interval of Proportion"
          )
)

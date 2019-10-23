library("exams")

qs = c(rep("spinner_D_ordered.Rmd",2),rep("spinner_D.Rmd",4))

set.seed(145)
exams2pdf(qs,
          name = "Spinner_D",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Standard Normal Spinner"
          )
)

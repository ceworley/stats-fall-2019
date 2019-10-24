library("exams")

qs = c(rep("spinner_E_ordered.Rmd",2),rep("spinner_E.Rmd",4))

set.seed(456)
exams2pdf(qs,
          name = "Spinner_E",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "(nonstandard) Normal Spinner"
          )
)

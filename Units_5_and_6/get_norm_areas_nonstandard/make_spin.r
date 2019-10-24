library("exams")

qs = "spinner_C.Rmd"

set.seed(132)
exams2pdf(qs,
          name = "Spinner_extra",
          nsamp = 100,
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "U and Z continued"
          )
)

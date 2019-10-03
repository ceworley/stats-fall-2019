library("exams")

qs = "probdist.Rmd"

set.seed(1234)
exams2pdf(qs,
          name = "probdist",
          nsamp = 10,
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Mean and SD of Probability Distribution"
          )
)
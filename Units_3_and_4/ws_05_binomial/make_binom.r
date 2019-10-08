library("exams")

qs = "binomial.Rmd"

set.seed(1234)
exams2pdf(qs,
          name = "Binomial",
          nsamp = 8,
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Binomial Distribution"
          )
)

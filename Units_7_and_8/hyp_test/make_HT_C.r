library("exams")

set.seed(123)
qs = c(rep("p_single_test_left_resistance.Rmd",2))

exams2pdf(qs,
          name = "HTC",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "HTC"
          )
)

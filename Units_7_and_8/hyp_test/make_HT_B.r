library("exams")

set.seed(19)
qs = c(rep("p_single_test_right_guessing.Rmd",2),rep("mean_twotail_t.Rmd",2),rep("mean_twotail_t_raw.Rmd",2))

exams2pdf(qs,
          name = "HTB",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Single-Sample HT B"
          )
)

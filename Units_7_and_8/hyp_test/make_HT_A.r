library("exams")

set.seed(123)
qs = c(rep("p_single_test_left.Rmd",2),rep("p_single_test_right.Rmd",2),rep("p_single_test_twotail.Rmd",2),rep("pvalue_single_mean_twotail.Rmd",2))

exams2pdf(qs,
          name = "HTA",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Single-Sample Hypothesis Testing Introduction"
          )
)

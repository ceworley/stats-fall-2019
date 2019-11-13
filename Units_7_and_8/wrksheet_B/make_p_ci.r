library("exams")

set.seed(13)
qs = c(rep("mean_ci.Rmd",2),rep("mean_ci_flower.Rmd",2),"p_get_n_conservative.Rmd","p_get_n.Rmd","p_ci_crazy.Rmd")

exams2pdf(qs,
          name = "ci",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Confidence Intervals"
          )
)

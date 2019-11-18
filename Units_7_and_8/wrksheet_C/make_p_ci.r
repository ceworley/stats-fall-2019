library("exams")

set.seed(13)
qs = c(rep("mean_ci.Rmd",2),"mean_ci_s.Rmd","mean_ci_flower.Rmd",rep("mean_get_n.Rmd",2),rep("p_ci_crazy.Rmd",2),"p_get_n.Rmd","p_get_n_adj.Rmd","p_get_n_conservative.Rmd")

exams2pdf(qs,
          name = "CI",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Confidence Intervals"
          )
)

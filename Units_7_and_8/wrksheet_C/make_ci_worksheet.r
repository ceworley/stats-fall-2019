library("exams")

set.seed(99)
qs = sample(c("mean_ci_traffic.Rmd",
       "mean_ci_beans.Rmd",
       "mean_ci_s_traffic.Rmd",
       "mean_ci_s_beans.Rmd",
       "mean_ci_s_flower.Rmd",
       "mean_get_n_beans.Rmd",
       "mean_get_n_traffic.Rmd",
       "p_ci_snails.Rmd",
       "p_ci_crazy.Rmd",
       "p_get_n_snails.Rmd",
       "p_get_n_cons_snails.Rmd",
       "p_get_n_adj.Rmd",
       "p_get_n_conservative.Rmd"))

exams2pdf(qs,
          name = "CI_worksheet",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Confidence Intervals"
          )
)

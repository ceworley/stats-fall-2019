library("exams")

set.seed(11111)
qs = c("p_ci_sickrabbit.Rmd",
       "mean_ci_s_newspecies.Rmd",
       "mean_get_n_social.Rmd",
       "p_single_test_twotail.Rmd",
       "mean_righttail_lightbulb.Rmd",
       "mean_twotail_t_raw.Rmd"
       )

exams2pdf(qs,
          name = "pe4A",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Practice Exam 4A"
          )
)




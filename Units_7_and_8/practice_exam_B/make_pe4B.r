library("exams")

set.seed(123)
qs = c("mean_ci_s_bird.Rmd",
       "p_ci_defective.Rmd",
       "p_get_n_cons_snails_B.Rmd",
       "mean_twotail_dice.Rmd",
       "p_single_test_right_guessing.Rmd",
       "mean_righttail_t_raw.Rmd",
       "mean_lefttail_t_raw.Rmd",
       "mean_twotail_t_raw.Rmd"
       )

exams2pdf(qs,
          name = "pe4B",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Practice Exam 4B"
          )
)




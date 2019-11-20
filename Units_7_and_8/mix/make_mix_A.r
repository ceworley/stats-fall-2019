library("exams")

set.seed(123)
qs = c("p_ci_crazy.Rmd",
       "mean_ci_beans.Rmd",
       "p_get_n_adj.Rmd",
       "p_get_n_cons_snails.Rmd",
       "p_single_test_left_resistance.Rmd",
       "p_single_test_right_guessing.Rmd",
       "p_single_test_twotail_coin.Rmd",
       "mean_twotail_t_raw.Rmd",
       "mean_ci_s_flower.Rmd",
       "mean_get_n_traffic.Rmd",
       "mean_righttail.Rmd",
       "mean_twotail_dice.Rmd"
       )

qs = sample(qs)

exams2pdf(qs,
          name = "CI and HT A",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "CI and HT mix A"
          )
)




library("exams")

set.seed(123)
qs = c("p_single_test_left_resistance.Rmd",
       "p_single_test_right_guessing.Rmd",
       "p_single_test_twotail_coin.Rmd",
       "mean_twotail_dice.Rmd",
       "mean_twotail_t.Rmd",
       "mean_twotail_t_raw.Rmd"
       )
  
  
exams2pdf(qs,
          name = "HTC",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Hypothesis Testing"
          )
)

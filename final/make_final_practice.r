library("exams")

set.seed(321)
qs = c("p1_cards.Rmd",
       "p2_compare_zs_furthest.Rmd",
       "p3_hist_reading2.Rmd",
       "p4_shade_M.Rmd",
       "p5_CL_aves.Rmd",
       "p6_mean_ci_beans.Rmd",
       "p7_mean_righttail_lightbulb.Rmd",
       "p8_make_scatter_plotC.Rmd",
       "p9_binom_norm_approx.Rmd",
       "p10_mean_twotail_t_raw.Rmd"
       )

exams2pdf(qs,
          name = "Final_practice_A",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Final Practice A"
          )
)



 
  
 
 
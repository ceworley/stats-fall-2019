library("exams")

set.seed(543)
qs = c("p1_cards.Rmd",
       "p2_compare_zs_smallest.Rmd",
       "p3_estimate_mean_SD.Rmd",
       "p4_Normal_areas.Rmd",
       "p5_CL_aves.Rmd",
       "p6_mean_ci_s_bird.Rmd",
       "p7_p_single_test_right_guessing.Rmd",
       "p8_make_scatter_plotD.Rmd",
       "p9_binom_norm_approx2.Rmd",
       "p10_mean_twotail_t_raw.Rmd"
       )

exams2pdf(qs,
          name = "Final_practice_B",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Final Practice B"
          )
)



 
  
 
 

library("exams")

set.seed(54)
qs = c(rep("mean_twotail_dice.Rmd",2),
       rep("mean_twotail_t.Rmd",2),
       rep("mean_twotail_t_raw.Rmd",2)
       )

exams2pdf(qs,
          name = "HT_twotail_mean",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "HT twotail mean"
          )
)




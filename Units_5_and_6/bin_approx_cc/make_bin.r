library("exams")

set.seed(123)
qs = c("binom_norm_approx.Rmd","binom_norm_approx2.Rmd","binom_norm_approx3.Rmd","binom_norm_approx4.Rmd")
qs = c(qs,sample(qs))

set.seed(456)
exams2pdf(qs,
          name = "binomial_normal_approx",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Normal Approx to Binomial (with Continuity Correction)"
          )
)

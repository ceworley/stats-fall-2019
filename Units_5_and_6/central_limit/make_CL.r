library("exams")

qs = c("sums.Rmd","sums.Rmd","aves.Rmd","aves.Rmd")
qs = c(qs, sample(rep(c("sums.Rmd","aves.Rmd"),4)))

set.seed(456)
exams2pdf(qs,
          name = "CL",
          dir = "wksht",
          template = "templates/worksheet_sols_end.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Central Limit Theorem"
          )
)

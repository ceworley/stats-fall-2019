library("exams")

q1 = "shade_L.Rmd"
q2 = "shade_R.Rmd"
q3 = "shade_M.Rmd"
q4 = "shade_TT.Rmd"
q5 = "shade_L_rev.Rmd"
q6 = "shade_R_rev.Rmd"
q7 = "shade_M_rev.Rmd"
q8 = "shade_TT_rev.Rmd"

qs = c(q1,q2,q3,q4,q5,q6,q7,q8)
qs = c(qs,sample(rep(qs,6)))

set.seed(1256)
exams2pdf(qs,
          name = "Shades_extra",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Standard Normal Density (extra)"
          )
)

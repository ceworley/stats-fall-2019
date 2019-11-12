library("exams")

set.seed(123)
qs = rep("p_get_n.Rmd",8)

exams2pdf(qs,
          name = "p_get_n",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-OCT-2",
            ID = "001",
            Titl = "Determine $n$ to have $ME$ when $\\hat{p}$ is approximately known"
          )
)

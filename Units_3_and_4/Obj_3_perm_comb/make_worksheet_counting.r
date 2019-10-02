library("exams")

qs = c("perm.Rmd","comb.Rmd")

set.seed(2222)
probs = qs
exams2pdf(probs,
          name = "counting_product_rule",
          dir = "wksht",
          template = "templates/worksheet_sols.tex",     
          header = list(
            Date = "2019-SEP-30",
            ID = "001",
            Titl = "Counting: Rule of Product"
          )
)


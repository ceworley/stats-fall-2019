library("exams")

qs = c("tree_clothes2.Rmd","tree_pizza2.Rmd","tree_clothes3.Rmd","tree_pizza3.Rmd",
       "clothes2.Rmd","pizza2.Rmd","clothes3.Rmd","pizza3.Rmd")

set.seed(12345)
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


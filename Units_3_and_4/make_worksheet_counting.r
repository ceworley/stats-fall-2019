library("exams")

qs = c("Obj_1_tree/tree_clothes2.Rmd","Obj_1_tree/tree_pizza2.Rmd","Obj_1_tree/tree_clothes3.Rmd","Obj_1_tree/tree_pizza3.Rmd",
       "Obj_2_prod_rule_of_counting/clothes2.Rmd","Obj_2_prod_rule_of_counting/pizza2.Rmd",
       "Obj_2_prod_rule_of_counting/clothes3.Rmd","Obj_2_prod_rule_of_counting/pizza3.Rmd")

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


  library("exams")
  
  qs = sample(c(rep("perm.Rmd",6),rep("comb.Rmd",6)))
  
  set.seed(1234)
  probs = qs
  exams2pdf(probs,
            name = "combperm",
            dir = "wksht",
            template = "templates/worksheet_sols_end_2perpage.tex",     
            header = list(
              Date = "2019-OCT-1",
              ID = "001",
              Titl = "Combinations and Permutations"
            )
  )
  

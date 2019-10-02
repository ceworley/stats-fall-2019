  library("exams")
  
  qs = "p1_cards.Rmd"
  
  set.seed(1234)
  exams2pdf(qs,
            name = "two_way_table_probs",
            nsamp = 14,
            dir = "wksht",
            template = "templates/worksheet_sols_end.tex",     
            header = list(
              Date = "2019-OCT-2",
              ID = "001",
              Titl = "2-way-table probabilities"
            )
  )
  

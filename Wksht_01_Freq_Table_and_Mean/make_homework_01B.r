    library("exams")
    
    
    q1 = "discrete_dotplot_unsorted.Rmd"
    q2 = "discrete_barplot_unsorted.Rmd"
    q3 = "continuous_hist_nearest_int.Rmd"
    q4 = "continuous_hist_nearest_mult5.Rmd"
    probs = c(q1, q3)
    
    
    set.seed(123)
    exams2pdf(probs, 
              n = 28,
              name = c("Bhomework","Bans_homework"),
              dir = "output",
              template = c("homework.tex","homework_ans.tex"),
              header = list(
                Date = "2019-09-04",
                ID = function(i) formatC(i, width = 3, flag = "0")
              )
    )

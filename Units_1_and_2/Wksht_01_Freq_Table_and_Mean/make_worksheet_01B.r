library("exams")



q1 = "discrete_dotplot_unsorted.Rmd"
q2 = "continuous_hist_nearest_int.Rmd"
probs = c(q1, q2)


set.seed(123)
exams2pdf(probs, 
          n=30,
          name = c("homework","ans_homework"),
          dir = "output2",
          resolution = 300,
          texdir = "tex",
          template = c("homework.tex","homework_ans.tex"),
          header = list(
            Date = "2019-09-04",
            ID = function(i) formatC(i, width = 3, flag = "0")
          )
)

library("exams")

q1 = "discrete_dotplot_unsorted.Rmd"
q2 = "continuous_hist_nearest_int.Rmd"
probs = c(q1, q2)

set.seed(1235)
exams2pdf(probs, 
          n=16,
          name = c("homework","ans_homework"),
          dir = "homework_C",
          resolution = 300,
          texdir = "tex",
          template = c("templates/homework.tex","templates/homework_ans.tex"),
          header = list(
            Date = "2019-SEP-12",
            ID = function(i) formatC(i, width = 3, flag = "0")
          )
)
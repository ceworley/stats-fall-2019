plot(0,0,xlim = c(0,100),ylim = c(0,100),type = "n", main="1000 overlapped running averages", ylab="running average", xlab="spin")
# cl <- rainbow(5)
# 
# for (i in 1:5){
#   lines(-10:10,runif(21,-10,10),col = cl[i],type = 'b')
# }
for(i in 1:1000){
  hits = sample(c(10,25,100), 100, replace=TRUE, prob=c(0.5,0.3,0.2))
  avgs = cumsum(hits) / (1:length(hits))
  points(avgs, col=rgb(0,0,0,0.03))
}
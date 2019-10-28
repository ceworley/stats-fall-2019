die = 1:6
n = 10

sums = numeric()
for(i in 1:1000){
  sums = c(sums, sum(sample(die,n,replace=T)))
}
hist(sums,freq = F, breaks=20)

mu = mean(die)*n
si = sd(die)*sqrt(length(die)-1)/sqrt(length(die))

xs = (min(die)*n):(max(die)*n)
ys = dnorm(xs,mu,si*sqrt(n))

lines(xs,ys)

xs
ys
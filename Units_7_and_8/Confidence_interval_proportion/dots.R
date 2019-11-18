pdf("dots.pdf",paper='letter',width=5*1.2,height=8*1.2)
par(mar=c(0,0,0,0))
xs = rep(1:25,40)
ys = sort(rep(1:40,25))
filled = sample(c(1,19),1000,replace = T,prob=c(0.45,0.55))
plot(xs,ys,pch=filled,cex=2,axes=F,ann=F)
dev.off()


8.5-x = 11-1.6x
0.6x = 2.5

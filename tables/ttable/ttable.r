
#ttails = c(0.9,0.95,0.98,0.99,)


#ras = c(0.1,0.05,0.025,0.02,0.01,0.005,0.0025)
#P(T>t)
las = c(0.90,0.95,0.975,0.98,0.99,0.995,0.9975,0.998,0.999)
#P(T<t)
#tts = c(0.2,0.1 ,0.05, 0.04,0.02,0.01 ,0.005 )
#P(|T|>t)
#P(|T|<t)


pdf("zneg.pdf", width=4, height=1.0)
par(mar=c(1,1,1,1))
xs = seq(-3,3,length=1000)

ys = dnorm(xs)

plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
     ann=FALSE,xaxt="n",yaxt="n",
     lwd=3,bty='n')
mtext("z",side=1,at=-0.5)
#mtext(c("-3","-2","-1","0","1","2","3"),side=1,at=-3:3)
#mtext(c("-3","0","3"),side=1,at=c(-3,0,3))
polygon(c(xs[xs<=-0.5], -0.5, -3),c(ys[xs<=-0.5], 0, 0), col="red")

lines(xs, ys, 'l', lwd=3)

arrows(-2,0.25,-0.95,0.1,lwd=2,code=2)
text(-2.0,0.3,label="area = P(Z<z)")

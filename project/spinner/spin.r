

pdf("spin.pdf",width=5,height=5)

par(mar=c(0,0,0,0))

plot(0,0,type='n',axes=F,ann=F,xlim=c(-1,1),ylim=c(-1,1))
thetas = seq(0,2*pi,length.out=2001)
polygon(0.8*cos(thetas),0.8*sin(thetas))
for(p in seq(0,0.25,0.05)){
  polygon(p*cos(thetas),p*sin(thetas))
}

for(theta in seq(0,2*pi,length.out=201)){
  lines(c(0.87*cos(theta),0.8*cos(theta)),c(0.87*sin(theta),0.8*sin(theta)))
  }

for(th in seq(0,2*pi,length.out=21)){
  lines(c(0.92*cos(th),0.8*cos(th)),c(0.92*sin(th),0.8*sin(th)),lwd=2)
  u = 1-abs(pi-th)/pi
  text(0.98*cos(th),0.98*sin(th),u)
}

for(i in 0:100){
  if(i%%10 != 0){
    text(cos(i/100*pi)*0.91,sin(i/100*pi)*0.91,i/100,cex=0.3,srt=((i/100*180)+90)%%180-90)
    text(cos(i/100*pi)*0.91,-sin(i/100*pi)*0.91,i/100,cex=0.3,srt=-((i/100*180)+90)%%180-90)
  }
}

dev.off()





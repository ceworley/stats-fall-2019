library(plot3D)
fn = "running"
system("mkdir pngs")

set.seed(123)
#plot(0,0,xlim = c(0,100),ylim = c(0,60),type = "n", main="1000 overlapped running averages", ylab="running average", xlab="spin")
allavgs = numeric()
xs = numeric()
for(i in 1:1000){
  hits = sample(c(5,15,60), 100, replace=TRUE, prob=c(0.5,0.3,0.2))
  avgs = cumsum(hits) / (1:length(hits))
  #  points(avgs, col=rgb(0,0,0,0.01))
  allavgs = c(allavgs, avgs)
  xs = c(xs, 1:100)
}
##  Simulate data:
set.seed(2002)
x <- xs
y <- allavgs
##  Create cuts:
x_c <- cut(x, 0:100+0.5)
y_c <- cut(y, 4:60+0.5)
##  Calculate joint counts at cut levels:
z <- table(x_c, y_c)/1000
par(mar = c(1,0,0,5))
##  Plot as a 3D histogram:
hist3D(x=1:100,y=5:60,z=z, phi = 5, theta = -45, xlab="spin", ylab="running average",zlab="relative frequency",border=rgb(0,0,0),
       lwd=1,r=3,d=1.1,resfac=10,xlim=c(1,100),ylim=c(5,60),zlim=c(0,0.5))

vs = c(5,15,60)
ps = c(0.5,0.3,0.2)
mm = sum(vs*ps)
vv = sum(ps*(vs-mm)^2)

nnn = function(x,y){
  return(dnorm(y,mean=19,sd=sqrt(vv/x)))
}

for(xx in c(25,50,75,100)){
  xs = rep(xx,56)
  ys = 5:60
  zs = nnn(xs,ys)*1.1
  lines3D(xs,ys,zs,add=TRUE,xlim=c(1,100),ylim=c(5,60),zlim=c(0,0.5),colkey=FALSE,col=rgb(1,0,0),lwd=4)
}

xs = 25:100
ses = sqrt(vv/xs)
ys = 19-ses
zs = nnn(xs,ys)*1.1
lines3D(xs,ys,zs,add=TRUE,xlim=c(1,100),ylim=c(5,60),zlim=c(0,0.5),colkey=FALSE,col=rgb(1,0,0),lwd=4)

xs = 25:100
ses = sqrt(vv/xs)
ys = 19-2*ses
zs = nnn(xs,ys)*1.1
lines3D(xs,ys,zs,add=TRUE,xlim=c(1,100),ylim=c(5,60),zlim=c(0,0.5),colkey=FALSE,col=rgb(1,0,0),lwd=4)

xs = 25:100
ses = sqrt(vv/xs)
ys = rep(19,76)
zs = nnn(xs,ys)*1.1
lines3D(xs,ys,zs,add=TRUE,xlim=c(1,100),ylim=c(5,60),zlim=c(0,0.5),colkey=FALSE,col=rgb(1,0,0),lwd=4)


#persp3D(xs, ys, zs, xlim=c(1,100), ylim=c(5,60), zlim=c(0,0.5), colkey=FALSE, phi = 5, theta = -45,
#        facets=FALSE)
#lines3D(x=rep(100,56),y=5:60,z=rep(0.4,56),add=TRUE,colkey = FALSE)

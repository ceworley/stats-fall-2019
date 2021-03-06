library(animation)


#draw circle
circ = function(r=.5,cen=c(0.5,0.5),n=1000,color=rgb(0,0,0,1)){
  angles = (1:n)/n*2*pi
  xs = cos(angles)*r+cen[1]
  ys = sin(angles)*r+cen[2]
  polygon(xs,ys, col = rgb(1,1,1))
}

#draw wedge
wedge = function(p1=0,p2=1,say="",co=NA,r=.5,cen=c(0.5,0.5),n=1000){
  r = 0.5
  cen = c(0.5,0.5)
  n = 1000
  angles =  as.integer(p1*n):as.integer(p2*n)/n*2*pi
  xs = c(cen[1],cos(angles)*r+cen[1])
  ys = c(cen[2],sin(angles)*r+cen[2])
  polygon(xs,ys,col=co)
  ang = as.integer((p1+p2)*n/2.0)/n*2*pi
  rt = r*0.75
  xt = cos(ang)*rt+cen[1]
  yt = sin(ang)*rt+cen[2]
  text(xt,yt,say,cex=1.8)
}

#draw arrow
arrow = function(p=0,wid=2,r=0.4,cen=c(0.5,0.5)){
  x0 = cos(p*2*pi+pi)*r+cen[1]
  y0 = sin(p*2*pi+pi)*r+cen[2]
  x1 = cos(p*2*pi)*r+cen[1]
  y1 = sin(p*2*pi)*r+cen[2]
  arrows(x0,y0,x1,y1,lwd = wid)
}

categ = function(cen = c(0.5,0.5), r = 0.45, pseps = c(0,1/3,25/60), phits = runif(10), cols = c(rgb(0.3,1,0.3),rgb(1,1,0.3),rgb(1,0.3,0.3)), labs = c("green","yellow","red"), frame = 1, frames_per_spin = 30, frames_per_stop = 10, rots_per_spin=3, p=0.25){
  obj = list(cen=cen, r=r, pseps=pseps, phits=phits, cols=cols, labs=labs, frame=frame, frames_per_spin = frames_per_spin, frames_per_stop=frames_per_stop, rots_per_spin=rots_per_spin, p=p)
  class(obj) = "categ"
  return(obj)
}

getp = function(ps,framenum,fpspin=30,fpstop=20,rps=3){
  i = framenum %/% (fpspin + fpstop)+1
  f = framenum %% (fpspin + fpstop)
  if(f >= fpspin){
    return(ps[i])
  } else {
    tot = rps + ps[i]
    num = (fpspin - f)^2
    den = fpspin^2
    rat = num/den
    p1 = tot - rat * tot
    p = p1 %% 1.0
    return(p)
  }
}

draw_marks = function(phits,r0=0.45,r1=0.5,cen=c(0.5,0.5),lwd=1){
  for(p in phits){
    x0 = cos(p*2*pi)*r0+cen[1]
    y0 = sin(p*2*pi)*r0+cen[2]
    x1 = cos(p*2*pi)*r1+cen[1]
    y1 = sin(p*2*pi)*r1+cen[2]
    segments(x0,y0,x1,y1,col=rgb(0,0,0),lwd = lwd)
  }
}

draw_marks2 = function(phits,r=0.5,cen=c(0.5,0.5),lwd=1){
  for(p in phits){
    x0 = cos(p*2*pi)*r+cen[1]
    y0 = sin(p*2*pi)*r+cen[2]
    points(x0,y0,col=rgb(0,0,0),pch=1)
  }
}

draw_uniform = function(){
  circ()
  draw_marks(1:9/10,0.3,0.4,lwd=1.5)
  draw_marks((1:10-0.5)/10,0.32,0.38,lwd=1.3)
  draw_marks(1:100/100,0.34,0.36)
  draw_marks(0,0.29,0.5,lwd=4)
  ts = 0:10/10
  ps = c(0.01,1:9/10,0.99)
  for(i in 1:11){
    x = cos(ps[i]*2*pi)*0.45+0.5
    y = sin(ps[i]*2*pi)*0.45+0.5
    text(x,y,ts[i],cex=2)
  }
}

draw_pmarks = function(){
  draw_marks(1:9/10,0.2,0.3,lwd=1.5)
  draw_marks((1:10-0.5)/10,0.23,0.27,lwd=1.3)
  draw_marks(1:100/100,0.24,0.26)
  draw_marks(0,0.2,0.3,lwd=4)
}

draw_discrete = function(pcs=c(0.5,0.75),texts=c("$5","$15","$60"),cols=c(rgb(1,0.5,1),rgb(0.5,1,1),rgb(1,1,0.5))){
  for(i in 1:(length(pcs)+1)){
    wedge(c(0,pcs)[i],c(pcs,1)[i],say=texts[i],co=cols[i])
  }
}

draw_running_ave = function(vals){
  tot = 0
  avgs = numeric()
  for(i in 1:length(vals)){
    tot = tot+vals[i]
    avg = tot/i
    avgs = c(avgs,avg)
  }
  plot(1:length(vals),avgs,xlim=c(0,100),ylim=c(0,60),xlab="number of spins",ylab="average winnings")
  text(50,55,sprintf("Total winnings: %d",tot),cex=1.5)
  text(50,45,sprintf("Number of spins: %d",length(vals)),cex=1.5)
  text(50,35,sprintf("%d/%d=%.3f",tot,length(vals),avg),cex=1.5)
}


fn = "raw"
#system("mkdir pngs")
set.seed(8917)
p1 = runif(100)
pcs = c(0.5,0.8)
txts = c("$5","$15","$60")
amts = c(5,15,60)
cols = c(rgb(1,0.3,0.3),rgb(0.3,1,0.3),rgb(0.3,0.3,1))
tot = 0
vals = numeric()
for(p in p1){
  i = sum(c(0,pcs) <= p)
  vals = c(vals, amts[i])
}

for(i in 1:length(p1)){
  png(sprintf("pngs/%s%03d.png",fn,i),width=800,height=400)
  par(mar=c(0,0,0,0),mfrow=c(1,2))
  plot(1, 1, type="n", axes=FALSE, ann=FALSE, xlim=c(0,1), ylim = c(0,1))
  fig.align="center"
  draw_discrete(pcs,txts,cols)
  draw_pmarks()
  arrow(p=p1[i])
  hits = 1:i
  draw_marks2(p1[hits])
  par(mar=c(5,5,1,1))
  draw_running_ave(vals[hits])
  dev.off()
}

system(sprintf("ffmpeg -y -framerate 2 -i pngs/%s%%03d.png -c:v libvpx-vp9 -pix_fmt yuva420p %s.webm",fn,fn))
# #system(sprintf("rm pngs/%s*",fn))


x = rnorm(1000)
# y = sample(c(5,15,60),100,replace=TRUE,prob=c(0.5,0.3,0.2))
p = sample(c(1,2,3))
plot(y)
sd(sample())
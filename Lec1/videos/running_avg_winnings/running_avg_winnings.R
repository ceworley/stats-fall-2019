library(animation)


#make canvas  
newframe = function(xlim=c(0,1),ylim=c(0,1)){
  par(mar=c(0,0,0,0),mfrow=c(1,2))
  plot(1, 1, type="n", axes=FALSE, ann=FALSE, xlim=xlim, ylim = ylim)
  fig.align="center"
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

Spinner = function(cen = c(0.5,0.5), r = 0.45, pseps = c(0,1/3,25/60), phits = runif(10), cols = c(rgb(0.3,1,0.3),rgb(1,1,0.3),rgb(1,0.3,0.3)), labs = c("green","yellow","red"), frame = 1, frames_per_spin = 30, frames_per_stop = 10, rots_per_spin=3, p=0.25){
  obj = list(cen=cen, r=r, pseps=pseps, phits=phits, cols=cols, labs=labs, frame=frame, frames_per_spin = frames_per_spin, frames_per_stop=frames_per_stop, rots_per_spin=rots_per_spin, p=p)
  class(obj) = "spinner"
  return(obj)
}



draw_marks = function(phits,r0=0.45,r1=0.5,cen=c(0.5,0.5)){
  for(p in phits){
    x0 = cos(p*2*pi)*r0+cen[1]
    y0 = sin(p*2*pi)*r0+cen[2]
    x1 = cos(p*2*pi)*r1+cen[1]
    y1 = sin(p*2*pi)*r1+cen[2]
    segments(x0,y0,x1,y1,col=rgb(0,0,0))
  }
}

draw_spinner = function(s){
  for(i in 1:length(s$pseps)){
    wedge(s$pseps[i], c(s$pseps,1)[i+1], s$labs[i], s$cols[i], r=s$r, cen=s$cen, n=1000)
  }
  arrow(p=s$p, wid=2, r=s$r*0.8, cen=s$cen)
  ps = (0:10)/10
  draw_marks(ps, r0=0.2, r1=0.3)
  p2 = (1:10)/10+0.05
  draw_marks(p2, r0=0.23, r1=0.27)
  p3 = (1:100)/100
  draw_marks(p3,0.24,0.26)
  # p4 = c(0.01,(1:9)/10,0.99)
  # ts = c((0:10)/10)
  # for(i in 1:11){
  #   x = cos(p4[i]*2*pi)*0.33+s$cen[1]
  #   y = sin(p4[i]*2*pi)*0.33+s$cen[2]
  #   text(x,y,ts[i])
  # }
}

draw_running_ave = function(results){
  n = i %/% (s$frames_per_spin + s$frames_per_stop)+1
  f = i %% (s$frames_per_spin + s$frames_per_stop)
  if(n>1){
    for(ii in 1:(n-1)){
      xx = x+dx*((ii-1)%%nx)
      yy = y+dy*((ii-1)%/%nx)
      res = sum(s$pseps <= s$phits[ii])
      circ(r=dx/2.2,cen=c(xx,yy),n=100,color=s$cols[res])
    }
  }
  if(f>s$frames_per_spin){
    xx = x+dx*((n-1)%%nx)
    yy = y+dy*((n-1)%/%nx)
    res = sum(s$pseps <= s$phits[n])
    circ(r=dx/2.2,cen=c(xx,yy),n=100,color=s$cols[res])
  }
}


fn = "running_2"
system("mkdir pngs")
set.seed(123)
phits = runif(100)
s1 = Spinner(cen = c(0.5,0.5), r = 0.4, pseps = c(0,2/5), phits = phits, cols = c(rgb(0.3,0.3,1),rgb(1,1,0.3)), labs = c("success","failure"), frame = 1, frames_per_spin = 0, frames_per_stop = 3, rots_per_spin=0, p=0.25)
totframes = length(s1$phits)*(s1$frames_per_spin+s1$frames_per_stop)
ani.record(reset = TRUE)
sucs = 0
fails = 0
relfreqs = c()
for(i in 1:100){
  png(sprintf("pngs/%s%03d.png",fn,i),width=800,height=400)
  newframe()
  s1$p = phits[i]
  draw_spinner(s1)
  if(s1$p <= 2/5){
    sucs = sucs + 1
  } else {
    fails = fails + 1
  }
  relfreqs = c(relfreqs, sucs/(sucs+fails))
  draw_marks(phits[1:i],r0=0.45,r1=0.5,cen=c(0.5,0.5))
  par(mar=c(4,4,0.5,0.5))
  plot(1:i,relfreqs,ylim=c(0,1),xlim=c(1,100),xlab="Trial",ylab="Relative Frequency of Success")
  text(sprintf("Successes: %d   Fails: %d   Trials: %d",sucs,fails,sucs+fails), x=50, y=0.95)
  text(sprintf("%d/%d = %.3f",sucs,sucs+fails,sucs/(sucs+fails)), x=50, y=0.9)
  dev.off()
}

system(sprintf("ffmpeg -y -framerate 1 -i pngs/%s%%03d.png -c:v libvpx-vp9 -pix_fmt yuva420p %s.webm",fn,fn))
#system(sprintf("rm pngs/%s*",fn))

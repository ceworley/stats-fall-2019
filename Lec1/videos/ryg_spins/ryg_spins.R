library(animation)
#make canvas  
newframe = function(xlim=c(0,2),ylim=c(0,1)){
  par(mar = c(0,0,0,0))
  plot(1, 1, type="n", axes=FALSE, ann=FALSE, xlim=xlim, ylim = ylim)
  fig.align="center"
}
#draw circle
circ = function(r=.5,cen=0.5,n=1000,color=rgb(0,0,0,1)){
  angles = (1:n)/n*2*pi
  xs = cos(angles)*r+cen[1]
  ys = sin(angles)*r+cen[2]
  polygon(xs,ys,col = color)
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
  text(xt,yt,say,cex=2)
}
#draw arrow
arrow = function(p=0,wid=2,r=0.4,cen=c(0.5,0.5)){
  x0 = cos(p*2*pi+pi)*r+cen[1]
  y0 = sin(p*2*pi+pi)*r+cen[2]
  x1 = cos(p*2*pi)*r+cen[1]
  y1 = sin(p*2*pi)*r+cen[2]
  arrows(x0,y0,x1,y1,lwd = wid)
}

Spinner = function(cen = c(0.5,0.5), r = 0.5, pseps = c(0,1/3,25/60), phits = runif(10), cols = c(rgb(0.3,1,0.3),rgb(1,1,0.3),rgb(1,0.3,0.3)), labs = c("green","yellow","red"), frame = 1, frames_per_spin = 30, frames_per_stop = 10, rots_per_spin=3, p=0.25){
  obj = list(cen=cen, r=r, pseps=pseps, phits=phits, cols=cols, labs=labs, frame=frame, frames_per_spin = frames_per_spin, frames_per_stop=frames_per_stop, rots_per_spin=rots_per_spin, p=p)
  class(obj) = "spinner"
  return(obj)
}

getp = function(spinner,framenum){
  i = framenum %/% (spinner$frames_per_spin + spinner$frames_per_stop)+1
  f = framenum %% (spinner$frames_per_spin + spinner$frames_per_stop)
  if(f >= spinner$frames_per_spin){
    return(spinner$phits[i])
  } else {
    tot = spinner$rots_per_spin + spinner$phits[i]
    num = (spinner$frames_per_spin - f)^2
    den = spinner$frames_per_spin^2
    rat = num/den
    p1 = tot - rat * tot
    p = p1 %% 1.0
    return(p)
  }
}

draw_spinner = function(s){
  for(i in 1:length(s$pseps)){
    wedge(s$pseps[i], c(s$pseps,1)[i+1], s$labs[i], s$cols[i], r=s$r, cen=s$cen, n=1000)
  }
  arrow(p=s$p, wid=2, r=s$r*0.8, cen=s$cen)
}

draw_results = function(s,i,x=1.15, dx=0.1,nx=8,y=0.95,dy=-0.1,ny=8){
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

system("mkdir pngs")
set.seed(123)
phits = runif(64)
s1 = Spinner(phits=phits)
totframes = length(s1$phits)*(s1$frames_per_spin+s1$frames_per_stop)
ani.record(reset = TRUE)
for(i in 1:totframes){
  png(sprintf("pngs/ryg_spins%03d.png",i),width=800,height=400)
  newframe()
  s1$p = getp(s1,i)
  draw_spinner(s1)
  draw_results(s1,i)
  text(1.98,0.02,i,cex=0.2)
  dev.off()
}

system("ffmpeg -y -framerate 20 -i pngs/ryg_spins%03d.png -c:v libvpx-vp9 -pix_fmt yuva420p ryg_spins.webm")
system("rm pngs/ryg_spins*")

i = totframes
png("ryg_spins_im.png",width=800,height=400)
newframe()
s1$p = getp(s1,i)
draw_spinner(s1)
draw_results(s1,i)
text(1.98,0.02,i,cex=0.2)
dev.off()
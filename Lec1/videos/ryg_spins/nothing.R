
spin = function(n=50,spins=1){
  for(i in 1:n){
    newframe()
    fig.align="center"
    circ()
    wedge(0, 20/60.0,"green",rgb(0.3,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(20/60, 25/60.0,"yellow",rgb(1,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(25/60,1,"red",rgb(1,0.3,0.3),0.5,c(0.5,0.5),1000)
    arrow(i/n*spins)
  }
}

spinstop = function(p=1,dp=0.5,n=10){
  for(i in 1:n){
    delp = (i-n)^2/n^2*dp
    pt = p-delp
    newframe()
    circ()
    wedge(0, 20/60.0,"green",rgb(0.3,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(20/60, 25/60.0,"yellow",rgb(1,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(25/60,1,"red",rgb(1,0.3,0.3),0.5,c(0.5,0.5),1000)
    arrow(pt)
  }
  for(i in 1:10){
    newframe()
    circ()
    wedge(0, 20/60.0,"green",rgb(0.3,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(20/60, 25/60.0,"yellow",rgb(1,1,0.3),0.5,c(0.5,0.5),1000)
    wedge(25/60,1,"red",rgb(1,0.3,0.3),0.5,c(0.5,0.5),1000)
    arrow(p)
  }
}
discrete_results = function(ps,pcs=c(0,0.5),categs=c("heads","tails"),cols=c(rgb(0.5,1,0.5),rgb(0,0.1,0.7))){
  for(i in 1:length(ps)){
    x = 0.9+0.2*(i%%5)
    y = 0.1+0.2*(i%/%5)
    categ = sum(pcs<=ps[i])
    circ(r=0.08,cen=c(x,y),n = 36,color = cols[categ])
  }
}
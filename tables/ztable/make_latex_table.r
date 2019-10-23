
cat(paste(rep("$z$ & $P(Z<z)$",6), collapse=" & "))
cat('\\\\ \\hline\n')

for(i in seq(0,0.5,0.01))
{
    zs = seq(-3,-0.5,0.5)+i
    Ps = round(pnorm(zs),4)
    zs = sprintf("%0.2f", zs)
    Ps = sprintf("%0.4f", Ps)
    line = paste(zs,Ps,sep = " & ", collapse= " & ")
    cat( paste(line,'\\\\\n',collapse = "" ))
}

cat('\n\n ################# \n\n\n')

cat(paste(rep("$z$ & $P(Z<z)$",6), collapse=" & "))
cat('\\\\ \\hline\n')

for(i in seq(0,0.5,0.01))
{
    zs = seq(0,2.5,0.5)+i
    Ps = round(pnorm(zs),4)
    zs = sprintf("%0.2f", zs)
    Ps = sprintf("%0.4f", Ps)
    line = paste(zs,Ps,sep = " & ", collapse= " & ")
    cat( paste(line,'\\\\\n',collapse = "" ))
}


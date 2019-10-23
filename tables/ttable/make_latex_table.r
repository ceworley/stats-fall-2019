
las = c(0.90,0.95,0.975,0.98,0.99,0.995,0.9975,0.998,0.999)
ras = c(0.1,0.05,0.025,0.02,0.01,0.005,0.0025,0.002,0.001)
mas = c(0.8,0.9,0.95,0.96,0.98,0.99,0.995,0.996,0.998)
tts = c(0.2,0.1,0.05,0.04,0.02,0.01,0.005,0.004,0.002)

cat("&& $P(T<t)=$ & ")
cat(paste(las, collapse=" & "))
cat("\\\\\n")
cat("&& $P(T>t)=$ & ")
cat(paste(ras, collapse=" & "))
cat("\\\\\n")
cat("&& $P(|T|<t)=$ & ")
cat(paste(mas, collapse=" & "))
cat("\\\\\n")
cat("&& $P(|T|>t)=$ & ")
cat(paste(tts, collapse=" & "))
cat("\\\\\\hline\n")

cat("df= && $t=$ & ")
cat(rep('&',5))
cat("\\\\ \n")

dfs = c(1:50,seq(60,95,5),seq(100,500,25),1000000)

for (df in dfs)
{
    cat("&")
    cat(df)
    cat("&& ")
    cat(paste(sprintf("%.2f",qt(las,df),2), collapse=" & "))
    cat("\\\\ \n")
}


#cat(paste(rep("$z$ & $P(Z<z)$",6), collapse=" & "))
#cat('\\\\ \\hline\n')

#for(i in seq(0,0.5,0.01))
#{
#    zs = seq(-3,-0.5,0.5)+i
#    Ps = round(pnorm(zs),4)
#    zs = sprintf("%0.2f", zs)
#    Ps = sprintf("%0.4f", Ps)
#    line = paste(zs,Ps,sep = " & ", collapse= " & ")
#    cat( paste(line,'\\\\\n',collapse = "" ))
#}

#cat('\n\n ################# \n\n\n')

#cat(paste(rep("$z$ & $P(Z<z)$",6), collapse=" & "))
#cat('\\\\ \\hline\n')

#for(i in seq(0,0.5,0.01))
#{
#    zs = seq(0,2.5,0.5)+i
#    Ps = round(pnorm(zs),4)
#    zs = sprintf("%0.2f", zs)
#    Ps = sprintf("%0.4f", Ps)
#    line = paste(zs,Ps,sep = " & ", collapse= " & ")
#    cat( paste(line,'\\\\\n',collapse = "" ))
#}


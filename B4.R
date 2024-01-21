cat("\014")
mean=57
sd=6.5
p<-pnorm(60,mean,sd)
cat("\nProbability of x<60 minutes :",p)
p<-pnorm(80,mean,sd)-pnorm(50,mean,sd)
cat("\n\nprobability of 50<x<80 minutes :",p)

cat("\014")
a<-c(11,13,14,16,16,15,15,14,13,13)
s<-c(50,50,55,60,65,65,65,60,60,50)
df<-data.frame(a,s)
print(df)
cor<-cor(df$a,df$s,method="pearson")
cat("\n\nPearson Coefficient is ",cor)
if(cor>0){
  cat("\n\nPositive Correlation")
}else if(cor<0) {
  cat("\n\nNegative Correlation")
}else{
  cat("\n\nNot corelation")
}

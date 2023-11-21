cat("\014")
GivenXY_df<-data.frame(
  X=c(2,4,5,6,8,11),
  Y=c(18,12,10,8,7,5)
)
x_sqr=GivenXY_df$X*GivenXY_df$X
y_sqr=GivenXY_df$Y*GivenXY_df$Y
XY=GivenXY_df$X*GivenXY_df$Y
GivenXY_df=cbind(GivenXY_df,x_sqr,y_sqr,XY)
cat("\nGiven X & Y\n")
print(GivenXY_df)
N=6
sum_x=sum(GivenXY_df$X)
sum_y=sum(GivenXY_df$Y)
sum_X_sqr=sum(X_sqr)
sum_y_sqr=sum(Y_sqr)
sum_XY=sum(GivenXY_df$XY)
y_mean=sum_y/N
x_mean=sum_x/N
nr=((N*sum_XY)-(sum_x*sum_y))
dr=(N*sum_X_sqr)-(sum_x*sum_x)
r=nr/dr
cat("\n Regression Co-efficient r:")
print(r)
intr=(r*(-x_mean))+y_mean
cat("y=",r,"X+",intr)
cat("\n\n(b).Predict the value of Y when X=7")
x=7
y=(r*x)+intr
cat("is",y)
cat("\n\n Verfied with in-built function\n")
X=c(2,4,5,6,8,11)
Y=c(18,12,10,8,7,5)
m=lm(y~x)
print(m)
df<-data.frame(x=7)
res<-predict(m,df)
cat("\n Predicted value of y when 7 is",res)

cat("\014")
co_Rel_df<-data.frame(
  advt_X=c(11,13,14,16,16,15,15,14,13,13),
  sales_Y=c(50,50,55,60,65,65,65,60,60,50)
)

X_sqr=co_Rel_df$advt_X*co_Rel_df$advt_X
Y_sqr=co_Rel_df$sales_Y*co_Rel_df$sales_Y
XY=co_Rel_df$advt_X*co_Rel_df$sales_Y

co_Rel_df=cbind(co_Rel_df,X_sqr,Y_sqr,XY)

cat("\n advertisement expences are variable X")
print(co_Rel_df$advt_X)
cat("\n sales volume are variable Y")
print(co_Rel_df$sales_Y)
cat("\n calculation of karl pearson's co-efficient of correlation\n\n")
print(co_Rel_df)

n=10
sum_X=sum(co_Rel_df$advt_X)
sum_Y=sum(co_Rel_df$sales_Y)
sum_X_sqr=sum(co_Rel_df$X_sqr)
sum_Y_sqr=sum(co_Rel_df$Y_sqr)
sum_XY=sum(co_Rel_df$XY)

nr=((n*sum_XY)-(sum_X*sum_Y))
dr=((sqrt((n*sum_X_sqr)-(sum_X*sum_X)))*(sqrt((n*sum_Y_sqr)-(sum_Y*sum_Y))))

r=nr/dr

cat("\nkarl pearson's co-efficient of correlation:")
print(r)

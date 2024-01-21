cat("\014")
x <- c(2,4,5,6,8,11)
y <- c(18,12,10,8,7,5)
model <- lm(y ~ x)
print(model)
df <- data.frame(x = 7)
res<-predict(model,df)

cat("\nRegression Equation: y =", round(coef(model)[2], 2),"x +", 
    round(coef(model)[1], 2))
cat("\nPredicted y when x = 7:",res)

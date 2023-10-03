cat("\014")
data(iris)
cat("\n2. Disply first 6 rows from iris data set \n")
res=head(iris,6)
print(res)
cat("\n3. Summary of numerical vaues in iris data set \n")
res=summary(iris)
print(res)
cat("\n4. Display number of rows and columns in iris data setn") 
res=dim(iris)
cat("\n Number of rows : ",res[1],"nNumber of columns :",res[2])
cat("\n\n5. Display column names of iris dataset. \n")
res=names(iris)
print(res)
hist(iris$Sepal.Length,
     col='steelblue',
     main='Histogram',
     xlab='Length',
     ylab='Frequency')

plot(iris$Sepal.Width,iris$Sepal.Length,
     col='steelblue',
     main='Scatterplot',
     xlab='Sepal Width',
     ylab='Sepal Length',
     pch=19)

boxplot(Sepal.Length~Species,
  data=iris,
  main='Sepal Length by Species',
  xlab='Species',
  ylab='Sepal Length',
  col='steelblue',
  border='black')
res=cor.test(iris$Sepal.Length, iris$Petal.Length,method="pearson")
print(res)
x=iris$Sepal.Length
y=iris$Petal.Length
cor_data = cor(x, y, method="pearson")
cat("\n9. Find Pearson correlation between Sepal.Length and Petal.Length\n")
print("Pearson correlation")
print(cor_data)
df=head(iris)
df=df[-5]
res=cor(df)
cat("\nl0. Create correlation matrix for iris dataset n")
print(res

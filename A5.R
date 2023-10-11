cat("\014")
set.seed(1)

x<-c((runif(5,0,5)),(runif(25,5,10)),(runif(40,10,15)),(runif(17,15,20)),(runif(13,20,25)))
print(x)
res<-hist(x,
          main="Time taken by 100 students to travel to school",
          xlab="Time in minutes",
          ylab="No.of Students",
          col="yellow",
          border="red")

print(res)
x.axis=c(min(res$breaks),res$mids,max(res$breaks))
y.axis=c(0,res$counts,0)
lines(x.axis,y.axis,type='o')

plot(x.axis,
     y.axis,
     main="Time taken by 100 student to travel to school",
     xlab="Time in Minutes",
     ylab="No of students")
polygon(x.axis,y.axis,col="green")

cat("/014")
x_60min=60
mean_value=57
std_div=6.5
z=(x_60min-mean_value)/std_div
p=pnorm(z)
cat("\n(a) The time taken by a random student from the group to complete home work in less than 60 minutes")
cat("\n Z score of for ",x_60min,"minutes is :",z)
cat("\n Probability is:",p,"or",(p*100),"%")

x_50min=50
x_80min=80
mean_value=57
std_div=6.5
z1=(x_50min-mean_value)/std_div
z2=(x_80min-mean_value)/std_div
p_50min=pnorm(z1)
p_80min=pnorm(z2)
p=(p_50min-p_80min)
cat("\n\n (b) the time taken by a random student from the group to complete homework betweenb 50 and 80 minutews")
cat("\nZ score of for",x_50min,"minutes is:",z1)
cat("\nZ score of for",x_80min,"minute is:",z2)
cat("\nProbability is:",p,"or",(p*100),"%")

cat("\014")
options(digits = 5)
df=data.frame(plant_1=c(29,27,30,27,28),
              plant_2=c(32,33,31,34,30),
              plant_3=c(25,24,24,25,25))
cat("\nWorkers age from three plants\n")
print(df)
k=ncol(df)
n=nrow(df)
N=n*k
cat("\nNumber of Plants:",k)
cat("\n Number of age data samples from each plant:",n)
cat("\n Total nnumber of age data set",N)
mp1=mean(df$plant_1)
mp2=mean(df$plant_2)
mp3=mean(df$plant_3)
Tot_mean=(mp1+mp2+mp3)/3
P_all=c(df$plant_1,df$plant_2,df$plant_3)
SS_P=(P_all-Tot_mean)^2
Tot_SS=sum(SS_P)
SSB=(n*(mp1-Tot_mean)^2)+(n*(mp2-Tot_mean)^2)+(n*(mp3-Tot_mean)^2)
SSW=Tot_SS-SSB
cat("\n\n Total Sum of Squares:",Tot_SS)
cat("\n\nSum of Squares Between:",SSB)
cat("\nSUm of Squares Within:",SSW)
df_SSB=k-1
df_SSW=N-k
cat("\n\n Degree of Freedom Between:",df_SSB)
cat("\n Degree of Freedom Within:",df_SSW)
mean_Sq_Between=SSB/df_SSB
mean_Sq_within=SSW/df_SSW
cat("\n\nMean Square Betwwen:",mean_Sq_Between)
cat("\nMean Square Within:",mean_Sq_within)
f=mean_Sq_Between/mean_Sq_within
cat("\n\nFactor ration value:",f)




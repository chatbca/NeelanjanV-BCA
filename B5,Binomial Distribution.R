cat("\014")
fact=function(m)
{
  f=1
  for (i in 1:m)
  {
    f=f*i
  }
  return(f)
}

n=4
x=3
p=0.10
q=1-p
Cb=(fact(n))/(fact(x)*fact(n-x))
P_x3=Cb*p^x*q^(n-x)
cat("\n\n(i) . If n=4 and p=0.10,then P(x=3")
cat("\n Binomial diistribution:",P_x3)

n=12
p=0.45
q=1-p

x=5
Cb=(fact(n))/(fact(x)*fact(n-x))
P_x5=Cb*p^x*q^(n-x)

x=6
Cb=(fact(n))/(fact(x)*fact(n-x))
P_x6=Cb*p^x*q^(n-x)

x=7
Cb=(fact(n))/(fact(x)*fact(n-x))
P_x7=Cb*p^x*q^(n-x)

pb=P_x5+P_x6+P_x7
cat("\n\n(ii).If n=12 and p=0.45,then for P(5<=x<=7)")
cat("\nBinomial Distribution:",pb)

#BUILT IN FUNCTION
cat("\n\n\tBuilt in function")
res=dbinom(3,4,0.10)
cat("\nBinomial Distribution :",res)

res2=dbinom(5,12,0.45)+dbinom(6,12,0.45)+dbinom(7,12,0.45)
cat("\nBinomial Distribution:",res2)

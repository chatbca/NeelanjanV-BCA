is_prime<-function(n)
{
  if(n<=1)
  {
    return(FALSE)
  }else if(n<=3)
  {
    return(TRUE)
  }else if(n%%2==0||n%%3==0)
  {
    return(FALSE)
  }
  i<-5
  while(i*i<=n)
  {
    if(n %%i==0||n %%(i+2)==0)
    {
      return(FALSE)
    }
    i<-i+6
  }
  return(TRUE)
}
find_primes_numberws<-function(start,end)
{
  primes<-c()
  for(i in start:end)
  {
    if(is_prime(i))
    {
      primes<-c(primes,i)
    }
  }
  return(c(primes))
}
cat("\n... To find prime numbers between interval...")
st=as.integer(readline("Enter the start number of interval:"))
ed=as.integer(readline("Enter the end number of interval:"))
result<-find_primes_numberws(st,ed)
cat("Prime numbers between ",st,"and",ed,"are:")
print(result)

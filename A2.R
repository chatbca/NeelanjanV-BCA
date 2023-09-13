quad<-function(a,b,c)
{
  d=((b*b)-4*a*c)
  if(d == 0)
  {
    res<-(-b*2*a)
    return(res)
  }
  else
  {
    if(d>0)
    {
      x1=(-b+sqrt(d))/(2*a)
      x2=(-b-sqrt(d))/(2*a)
      res<-c(x1,x2)
      return(res)
    }
    else
    {
      x1=(-b + sqrt(as.complex(d)))/(2*a)
      x2=(-b - sqrt(as.complex(d)))/(2*a)
      res<-c(as.complex(x1),as.complex(x2))
      return(res)
    }
  }
}
a=as.integer(readline("enter value of a :"))
b=as.integer(readline("enter value of b :"))
c=as.integer(readline("enter value of c :"))
cat("\n..... output.....")
x_value<-quad(a,b,c)

if(length(x_value)==1)
{
  cat("\n\n roots are equal X1 = X2\n")
  print(x_value)
}else
{
  x1=x_value[1]
  x2=x_value[2]
  if(is.complex(x1))
  {
    cat("\nRoots are complex conjugative\n")
  }
  else
  {
    cat("\nRoots are real and different\n")
  }
  cat("\nX1:")
  print(x1)
  cat("\nX2:")
  print(x2)
}

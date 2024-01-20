cat("\014")
quadratic_equation <- function(a, b, c) { 
   d <- b^2 - 4 * a * c 
  if (d > 0) { 
    x1 <- (-b + sqrt(d)) / (2 * a) 
    x2 <- (-b - sqrt(d)) / (2 * a) 
       print(paste("\n The roots of the equation are:", x1, "and", x2)) 
  } else if (d == 0) { 
      x <- -b / (2 * a) 
      print(paste("\n The root of the equation is:", x)) 
  } else { 
    print("\n The equation has no real roots.") 
  } 
} 
a <- as.numeric(readline("Enter the value of a: ")) 
b <- as.numeric(readline("Enter the value of b: ")) 
c <- as.numeric(readline("Enter the value of c: ")) 
quadratic_equation(a, b, c)
#1,-2,1
#2,-5,2
#1,-3,2

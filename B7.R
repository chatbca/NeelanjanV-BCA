cat("\014")
before<- c(22, 20, 19, 24, 25, 25, 28, 22, 30, 27, 24, 18, 16, 19, 19, 28, 24, 25, 
           25, 23)
after <- c(24, 22, 19, 22, 28, 26, 28, 24, 30, 29, 25, 20, 17, 18, 18, 28, 26, 27, 27, 
           24)
result <- t.test(before, after, paired = TRUE)
print(result)
if (result$p.value < 0.05)
{
  cat("\nReject Null Hypothises")
} else {
  cat("\nAccept Null Hypothises")
}

cat("\014")
n1 <- 4
p1 <- 0.10
prob3 <- dbinom(3, size = n1, prob = p1)
n2 <- 12
p2 <- 0.45
prob57 <- sum(dbinom(5:7, size = n2, prob = p2))
cat("a. P(x = 3) =", prob3)
cat("\n\nb. P(5 <= x <= 7) =", prob57)

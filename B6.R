cat("\014")
lower<- 200
upper<- 240
x1 <- 230
probability_x1 <- 1 - punif(x1, lower, upper)
x2_min <- 205
x2_max <- 220
probability_x2 <- punif(x2_max, lower, upper) - punif(x2_min, lower,upper)
cat("\na. P(x > 230):", probability_x1)
cat("\n\nb. P(205 ≤ x ≤ 220):", probability_x2)

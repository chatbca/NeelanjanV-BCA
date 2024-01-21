plant1 <- c(29, 27, 30, 27, 28)
plant2 <- c(32, 33, 31, 34, 30)
plant3 <- c(25, 24, 24, 25, 25)
data1 <- data.frame(
  Plant = factor(rep(1:3, each = 5)),
  Age = c(plant1, plant2, plant3)
)
print("Data:")
print(data1)
result <- aov(Age ~ Plant, data = data1)
print("ANOVA Results:")
summary_result <- summary(result)
print(summary_result)
pvalue <- summary_result[[1]][["Pr(>F)"]][1]
if (pvalue < 0.01) {
  cat("There is a significant difference in the mean ages of workers at three 
plants (p-value =",
      pvalue, ")")
} else {
  cat("There is no significant difference in the mean ages of workers at three 
plants (p-value =",
      pvalue, ")")
}

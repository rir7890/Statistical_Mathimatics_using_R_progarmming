# Load necessary libraries
library(tidyverse)

# Scenario 1: One-way ANOVA
group1 <- c(22, 26, 30, 34, 38)
group2 <- c(18, 22, 26, 30, 34)
group3 <- c(14, 18, 22, 26, 30)
one_way_anova_result <- aov(c(group1, group2, group3) ~ rep(c("Group1", "Group2", "Group3"), each = 5))

# Scenario 2: Two-way ANOVA
data <- data.frame(
  value = c(group1, group2, group3),
  factor1 = rep(c("A", "B", "C"), each = 5),
  factor2 = rep(rep(c("X", "Y"), each = 5), times = 3) # Correcting factor2 length
)
two_way_anova_result <- aov(value ~ factor1 * factor2, data = data)

# Print results
print(summary(one_way_anova_result))
print(summary(two_way_anova_result))


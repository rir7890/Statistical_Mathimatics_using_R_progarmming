# Load necessary libraries
library(tidyverse)

#  1: t-test for comparing means
group1 <- c(22, 26, 24, 31, 29)
group2 <- c(18, 21, 17, 23, 26)
t_test_result <- t.test(group1, group2)

#  2: Z-test for proportions
successes <- 18
total_trials <- 45
prop_test_result <- prop.test(successes, total_trials, alternative = "two.sided")

#  3: Chi-Square test for independence
data <- matrix(c(28, 19, 14, 23), nrow = 2, byrow = TRUE)
chi_square_result <- chisq.test(data)

# Print results
print(t_test_result)
print(prop_test_result)
print(chi_square_result)

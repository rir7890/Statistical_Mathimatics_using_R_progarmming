
# Generate a random population
population <- rnorm(1000)

# Perform simple random sampling
sampled_data <- sample(population, size = 100, replace = FALSE)

# Assess accuracy of parameter estimation
mean_difference <- mean(population) - mean(sampled_data)
cat("Mean difference:", mean_difference, "\n")

# Install and load the sampling package
install.packages("sampling")
library(sampling)

# Generate data with strata
strata <- rep(1:5, each = 200)
population <- rnorm(1000)
strata_sample <- strata(data.frame(strata), size = c(50, 50, 50, 50, 50), method = "srswor")
sampled_data <- population[strata_sample$IDunit]

# Assess accuracy of parameter estimation
mean_difference <- mean(population) - mean(sampled_data)
cat("Mean difference:", mean_difference, "\n")

# Generate data with clusters
clusters <- rep(1:50, each = 20)
population <- rnorm(1000)

# Randomly select clusters
selected_clusters <- sample(unique(clusters), 5)

# Perform cluster sampling
sampled_data <- population[clusters %in% selected_clusters]

# Assess accuracy of parameter estimation
mean_difference <- mean(population) - mean(sampled_data)
cat("Mean difference:", mean_difference, "\n")

# Generate a random population
population <- rnorm(1000)

# Perform convenience sampling (e.g., first 100 individuals)
sampled_data <- population[1:100]

# Assess accuracy of parameter estimation
mean_difference <- mean(population) - mean(sampled_data)
cat("Mean difference:", mean_difference, "\n")


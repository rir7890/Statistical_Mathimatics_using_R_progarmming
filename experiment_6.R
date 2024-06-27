# Load required libraries
library(ggplot2)
# Function to plot histograms
plot_histogram <- function(data, title) {
  ggplot(data, aes(x = value)) +
    geom_histogram(binwidth = 1, fill = "skyblue", color = "black", aes(y = ..count../sum(..count..)), alpha = 0.8) +
    labs(title = title, x = "Value", y = "Probability") +
    theme_minimal()
}
# Bernoulli Distribution Simulation
set.seed(123)  # Set seed for reproducibility
p <- 0.3  # Probability of success
# Generate 1000 samples from Bernoulli distribution
bernoulli_samples <- rbinom(1000, 1, p)
# Analyze distribution
bernoulli_mean <- mean(bernoulli_samples)
bernoulli_var <- var(bernoulli_samples)
# Plot histogram
plot_histogram(data.frame(value = bernoulli_samples), "Bernoulli Distribution")

# Binomial Distribution Simulation
n <- 10  # Number of trials
p <- 0.3  # Probability of success
# Generate 1000 samples from Binomial distribution
binomial_samples <- rbinom(1000, n, p)
# Analyze distribution
binomial_mean <- mean(binomial_samples)
binomial_var <- var(binomial_samples)
# Plot histogram
plot_histogram(data.frame(value = binomial_samples), "Binomial Distribution")

# Poisson Distribution Simulation
lambda <- 3  # Average rate of events per unit time or space
# Generate 1000 samples from Poisson distribution
poisson_samples <- rpois(1000, lambda)
# Analyze distribution
poisson_mean <- mean(poisson_samples)
poisson_var <- var(poisson_samples)
# Plot histogram
plot_histogram(data.frame(value = poisson_samples), "Poisson Distribution")
# Summary of distributions
distribution_summary <- data.frame(
  Distribution = c("Bernoulli", "Binomial", "Poisson"),
  Mean = c(bernoulli_mean, binomial_mean, poisson_mean),
  Variance = c(bernoulli_var, binomial_var, poisson_var)
)
print(distribution_summary)

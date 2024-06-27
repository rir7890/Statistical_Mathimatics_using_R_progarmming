# Set seed for reproducibility
set.seed(123)

# Generate random samples from Uniform distribution
uniform_data <- runif(1000, min = 0, max = 1)

# Generate random samples from Exponential distribution
exponential_data <- rexp(1000, rate = 1)

# Generate random samples from Normal distribution
normal_data <- rnorm(1000, mean = 0, sd = 1)

# Plot histograms for each distribution
par(mfrow = c(2, 2))

hist(uniform_data, main = "Uniform Distribution", xlab = "Value", ylab = "Frequency", col = "skyblue")
hist(exponential_data, main = "Exponential Distribution", xlab = "Value", ylab = "Frequency", col = "lightgreen")
hist(normal_data, main = "Normal Distribution", xlab = "Value", ylab = "Frequency", col = "salmon")

# Overlay normal curve on the Normal distribution histogram
curve(dnorm(x, mean = mean(normal_data), sd = sd(normal_data)), add = TRUE, col = "blue", lwd = 2)

# Calculate and shade area under the normal curve within a certain range
x <- seq(-3, 3, length.out = 1000)
y <- dnorm(x, mean = mean(normal_data), sd = sd(normal_data))
x_fill <- seq(-2, 2, length.out = 100)
y_fill <- dnorm(x_fill, mean = mean(normal_data), sd = sd(normal_data))

polygon(c(x_fill, rev(x_fill)), c(rep(0, length(x_fill)), rev(y_fill)), col = "lightblue", border = NA)

# Add text for area under the curve
text(0, 0.1, "Area = 0.954", pos = 3, col = "darkblue", cex = 1.5)

# Reset par settings
par(mfrow = c(1, 1))

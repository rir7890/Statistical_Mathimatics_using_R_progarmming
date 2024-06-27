library(ggplot2)

# Generate sample data
set.seed(123)
n <- 100  # Number of data points
x <- seq(1, 10, length.out = n)
y <- 3 * x^2 - 2 * x + 1 + rnorm(n, mean = 0, sd = 3)  # True relationship + noise

# Plot the data
plot_data <- data.frame(x, y)
ggplot(plot_data, aes(x, y)) + geom_point() + ggtitle("Scatter plot of sample data")

# Linear regression
linear_model <- lm(y ~ x)
summary(linear_model)

# Plot linear regression line
plot(plot_data$x, plot_data$y)
abline(linear_model, col = "red")

# Multiple regression
# Generate additional predictor
z <- 2 * x + rnorm(n, mean = 0, sd = 2)
multiple_model <- lm(y ~ x + z)
summary(multiple_model)

# Polynomial regression
poly_degree <- 2  # Degree of polynomial
poly_model <- lm(y ~ poly(x, poly_degree))
summary(poly_model)

# Plot polynomial regression curve
x_seq <- seq(min(x), max(x), length.out = 100)
poly_pred <- predict(poly_model, newdata = data.frame(x = x_seq))
plot(plot_data$x, plot_data$y)
lines(x_seq, poly_pred, col = "blue")

# Compare models
anova(linear_model, multiple_model, poly_model)

# Assessing model assumptions
# Residuals vs Fitted values plot
plot(linear_model, which = 1)

# Normal Q-Q plot
plot(linear_model, which = 2)

# Scale-Location plot
plot(linear_model, which = 3)

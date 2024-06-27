# Rahul Kumar (20BCS7081)
data <- c(23, 45, 67, 12, 89, 45, 23, 67, 34, 56)

# Calculate the mean
mean_value <- mean(data)

# Print the result
print(paste("Mean:", mean_value))

# Calculate the median
median_value <- median(data)

# Print the result
print(paste("Median:", median_value))

# Calculate the mode
mode_value <- Mode(data)

# Print the result
print(paste("Mode:", mode_value))
#-------------------------------------------------------------
# Create a histogram for data distribution
hist(data, main = "Histogram of Data", xlab = "Values", col = "lightblue", border = "black")

# Add a vertical line for the mean
abline(v = mean_value, col = "red", lwd = 2)

# Add a vertical line for the median
abline(v = median_value, col = "blue", lwd = 2)

# Add a vertical line for the mode
abline(v = mode_value, col = "green", lwd = 2)

# Add a legend
legend("topright", legend = c("Mean", "Median", "Mode"), col = c("red", "blue", "green"), lwd = 2)



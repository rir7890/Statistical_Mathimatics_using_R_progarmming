#Rahul Kumar (20BCS7081) 
# Set the number of simulations
n_simulations <- 10000

# Simulate rolling a fair six-sided die
die_rolls <- sample(1:6, n_simulations, replace = TRUE)

# Calculate the proportion of each outcome
probabilities <- table(die_rolls) / n_simulations

# Define new theoretical probabilities (for example purposes)
new_theoretical_probs <- c(0.1, 0.15, 0.2, 0.21, 0.2, 0.1)

# Plotting the results with new theoretical probabilities
barplot(rbind(probabilities, new_theoretical_probs),
      beside = TRUE,
      names.arg = 1:6,
      col = c("blue", "gray"),
      legend.text = c("Simulated", "Theoretical"),
      main = "Simulated vs Theoretical Probabilities of Rolling a Fair Six-sided Die",
      ylab = "Probability",
      ylim = c(0, 0.3))
#dataset <- read.csv("path/to/your/dataset.csv")
dat <- read.csv("C:/Users/prasa/OneDrive/Desktop/DataVisulalization/weather.csv")

dataset <- data.frame(dat)

str(dataset)

head(dataset)

summary(dataset)

subset_data <- dataset[dataset$WindGustSpeed>50,]

print(subset_data)

dataset$new_variable <- dataset$WindGustSpeed*2

filter_data <- subset(dataset,new_variable=='60')
print(filter_data)

# Calculate mean, median, and standard deviation

mean_value <- mean(dataset$Cloud9am)

median_value <- median(dataset$Cloud9am)

sd_value <- sd(dataset$Cloud9am)

table(dataset$Cloud9am)

# Create a histogram for a numeric variable

hist(dataset$Cloud9am, main = "Distribution of Numeric Column", xlab = "1")


# Create a bar plot for a categorical variable0

barplot(table(dataset$RainTomorrow), main = "Frequency of Categories")

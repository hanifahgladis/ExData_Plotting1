# Plot 1 - Histogram of Global Active Power 

png("plot1.png", width = 480, height = 480)
hist(subset_data$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()

# Plot 2 - Global Active Power over Time 

png("plot2.png", width = 480, height = 480)
plot(subset_data$Datetime, subset_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

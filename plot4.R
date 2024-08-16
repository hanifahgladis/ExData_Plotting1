# Plot 4 - Multiple Plots 

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# Top-left plot
plot(subset_data$Datetime, subset_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power")

# Top-right plot
plot(subset_data$Datetime, subset_data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# Bottom-left plot
plot(subset_data$Datetime, subset_data$Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subset_data$Datetime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Datetime, subset_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

# Bottom-right plot
plot(subset_data$Datetime, subset_data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global Reactive Power")

dev.off()

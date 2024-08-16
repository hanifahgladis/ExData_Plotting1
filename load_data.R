# Load necessary libraries
library(data.table)

# Load the dataset for only the required dates
file <- "household_power_consumption.txt"
data <- fread(file, na.strings = "?", stringsAsFactors = FALSE)

# Convert Date and Time columns to Date/Time class
data$Datetime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# Subset the data for the required dates
subset_data <- data[(data$Datetime >= "2007-02-01") & (data$Datetime < "2007-02-03"), ]

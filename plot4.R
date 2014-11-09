# ------------------------------------------------------------------------------
# Plot 4
#
# Did as part of coursera project work
# Author: Sudar Muthu
# ------------------------------------------------------------------------------
# Read and subset data
source("read_data.R")

# Open png device
png(filename = "plot4.png", width = 480, height = 480)

# Specify the number of graphs
par(mfcol = c(2, 2))

# Create the plots
# first plot
plot(data$DateTime, data$Global_active_power, type = "l",
     ylab = "Global Active Power", xlab = "")

# second plot
plot(data$DateTime, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 1, cex=0.75, bty = "n")

# third plot
plot(data$DateTime, data$Voltage, type = "l",
     ylab = "Voltage", xlab = "datetime")

# fourth plot
plot(data$DateTime, data$Global_reactive_power, type = "l",
     ylab = "Global_reactive_power", xlab = "datetime")

# close the device
dev.off()

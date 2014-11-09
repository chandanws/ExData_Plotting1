# ------------------------------------------------------------------------------
# Plot 3
#
# Did as part of coursera project work
# Author: Sudar Muthu
# ------------------------------------------------------------------------------
# Read and subset data
source("read_data.R")

# Open png device
png(filename = "plot3.png", width = 480, height = 480)

# Create the plot
plot(data$DateTime, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 1, cex=0.75)


# close the device
dev.off()

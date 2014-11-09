# ------------------------------------------------------------------------------
# Plot 2
#
# Did as part of coursera project work
# Author: Sudar Muthu
# ------------------------------------------------------------------------------
# Read and subset data
source("read_data.R")

# Open png device
png(filename = "plot2.png", width = 480, height = 480)

# Create the plot
plot(data$DateTime, data$Global_active_power, type = "l",
     ylab = "Global Active Power (Kilowatts)", xlab = "")

# close the device
dev.off()

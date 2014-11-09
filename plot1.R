# ------------------------------------------------------------------------------
# Plot 1
#
# Did as part of coursera project work
# Author: Sudar Muthu
# ------------------------------------------------------------------------------
# Read and subset data
source("read_data.R")

# Open png device
png(filename = "plot1.png", width = 480, height = 480)

# Create the plot
hist(data$Global_active_power,
     col="red",
     xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")

# close the device
dev.off()

# ------------------------------------------------------------------------------
# Process the "Electric power consumption" dataset
#
# Did as part of coursera project work
# Author: Sudar Muthu
# ------------------------------------------------------------------------------
# If required packages are not present then install them.
# code from https://class.coursera.org/getdata-008/forum/thread?thread_id=247#post-1074
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")};library(dplyr)

# Create a new class called myDate that can be passed to colClasses in read.table
setClass('myDate')
setAs("character", "myDate", function(from) as.Date(from, format="%d/%m/%Y") )

# read data
data <- tbl_df(read.table("data/household_power_consumption.txt", sep=";",
                   comment.char = "", header = TRUE, na.strings = "?",
                   colClasses = c("myDate", "character", rep("numeric", 7))))

# subset data based on dates and merge date and time into a single column
data <- filter(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02")) %>%
  mutate(DateTime = as.POSIXct(paste(Date, Time)))

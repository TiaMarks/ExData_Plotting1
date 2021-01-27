# Data download, unzip and loading in R
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data1.zip", method = "curl")
unzip("data1.zip")
data <- read.table("household_power_consumption.txt", header = TRUE, sep=";")

# Change of the Date column class in "date", data needed subset 
data$Date = as.Date(data$Date, "%d/%m/%Y")
subdata <- data[(data$Date == "2007-02-01" | data$Date == "2007-02-02"),]

# Change of the Time column class and of the Global Active Power column class
library(chron)
subdata$Time = chron(times. = subdata$Time)
subdata$Global_active_power = as.numeric(subdata$Global_active_power)

# Creation of the png graphic device and of the histogram for the Global Active Power column 
png(filename = "plot1.png")
hist(subdata$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

# We see that the more frequent values of averaged active power in a minute 
# are between "0-0.5" and "1-1.5".
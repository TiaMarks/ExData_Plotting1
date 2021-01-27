# I created a complete date and time value and then changed the column name
subdata$Date = as.POSIXct(paste(subdata$Date, subdata$Time), format="%Y-%m-%d %H:%M:%S")
colnames(subdata)[1] <- "Date.Time"

# I created a png graphic device and the plotted the date/time column with the 
# Global Active Power column
png(filename = "plot2.png")
plot(subdata$Date.Time, subdata$Global_active_power, type = "l", col="black", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

# We can see the hours of each day where more active power is consumed
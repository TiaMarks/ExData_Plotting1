#I created a png graphic device with 4 plots then plotted plot2 and plot3 in the first column
png(filename = "plot4.png")
par(mfcol=c(2,2))
plot(subdata$Date.Time, subdata$Global_active_power, type = "l", col="black", xlab = "", ylab = "Global Active Power")
plot(subdata$Date.Time, subdata$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(subdata$Date.Time, subdata$Sub_metering_2, type = "l", col="red")
lines(subdata$Date.Time, subdata$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = colnames(subdata)[7:9], lty=c(1, 1, 1), col = c("black", "red", "blue"))

#I plotted the dates with the Voltage first and then with the Global Reactive Power
plot(subdata$Date.Time, subdata$Voltage, type = "l", col="black", xlab = "datetime", ylab = "Voltage")
plot(subdata$Date.Time, subdata$Global_reactive_power, type = "l", col="black", xlab = "datetime", ylab = colnames(subdata)[4])
dev.off()
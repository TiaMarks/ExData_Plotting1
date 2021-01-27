# I created a png graphic device and the plotted the dates with the three Sub Metering variables
# I also created a legend showing what each line of the plot means
png(filename = "plot3.png")
plot(subdata$Date.Time, subdata$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(subdata$Date.Time, subdata$Sub_metering_2, type = "l", col="red")
lines(subdata$Date.Time, subdata$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = colnames(subdata)[7:9], lty=c(1, 1, 1), col = c("black", "red", "blue"))
dev.off()

# We can see when and in what rooms more power is consumed.

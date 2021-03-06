rm(list = ls())

xdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
xdata <- xdata[xdata$Date == "2/2/2007" | xdata$Date == "1/2/2007",]

date <- xdata$Date
time <- xdata$Time

# datex <- as.Date(date, "%d/%m/%y")

xaxis <- paste(date, time)
xval <- strptime(xaxis, format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")
plot(xval,xdata$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(xval,xdata$Sub_metering_2,col = "red")
lines(xval,xdata$Sub_metering_3,col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
dev.off()
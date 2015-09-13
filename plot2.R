rm(list = ls())

xdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
xdata <- xdata[xdata$Date == "2/2/2007" | xdata$Date == "1/2/2007",]

# date <- as.character(xdata$Date)
# time <- as.character(xdata$Time)

date <- xdata$Date
time <- xdata$Time

# datex <- as.Date(date, "%d/%m/%y")

xaxis <- paste(date, time)
xval <- strptime(xaxis, format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")
plot(xval,xdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()
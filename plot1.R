rm(list = ls())

xdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
xdata <- xdata[xdata$Date == "2/2/2007" | xdata$Date == "1/2/2007",]

dat <- as.numeric(as.character(xdata$Global_active_power))
dat2 <- na.omit(dat)

png(filename = "plot1.png")
hist(dat2, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

#dev.copy(png, file = "plot1.png")
#dev.off()

data <- data.frame()
data <- read.csv("household_power_consumption.txt",sep = ";", na.strings = "?")
dataset <- subset(data,data$Date == "1/2/2007" | data$Date == "2/2/2007")
dataset <- na.omit(dataset)
dataset$timeall <- as.POSIXct(paste(dataset$Date,dataset$Time), format = "%d/%m/%Y %H:%M")
png(filename = "plot2.png", width = 480, height = 480)
plot(dataset$timeall, dataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

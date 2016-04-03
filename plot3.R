## plotting the file - plot3.png - output scatterplot with different Sub_meterings

file <- "household_power_consumption.txt"
bigData <- read.table(file, header = TRUE, sep =";", nrow = 70000, stringsAsFactors = FALSE, dec = ".")
subdata <- subset(bigData, Date == "1/2/2007" | Date == "2/2/2007")
activePower <- as.numeric(subdata$Global_active_power)
subMet1 <- as.numeric(subdata$Sub_metering_1)
subMet2 <- as.numeric(subdata$Sub_metering_2)
subMet3 <- as.numeric(subdata$Sub_metering_3)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width = 480, height = 480)
plot(datetime, subMet1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, subMet2, col = "red")
lines(datetime, subMet3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()
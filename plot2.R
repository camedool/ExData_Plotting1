## plotting the file - plot2.png - output scatterplot with lines

file <- "household_power_consumption.txt"
bigData <- read.table(file, header = TRUE, sep =";", nrow = 70000, stringsAsFactors = FALSE, dec = ".")
subdata <- subset(bigData, Date == "1/2/2007" | Date == "2/2/2007")
activePower <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(datetime, activePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
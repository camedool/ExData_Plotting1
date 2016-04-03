## script for plotting file plot1.png: output histogram

file <- "household_power_consumption.txt"
bigData <- read.table(file, header = TRUE, sep =";", nrow = 70000, stringsAsFactors = FALSE, dec = ".")
subdata <- subset(bigData, Date == "1/2/2007" | Date == "2/2/2007")
activePower <- as.numeric(subdata$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(activePower, col = "red", main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", ylab = "Frequency", breaks = 12)
dev.off()
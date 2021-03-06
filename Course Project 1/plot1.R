hh<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",)
(hh <- hh[with(hh, hh$Date == "1/2/2007" | hh$Date == "2/2/2007"), ])
png("plot1.png", width = 480, height = 480)
hist(hh$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", cex.axis = 0.8, cex.lab = 0.9)
dev.off()

source('read_data.R')
data <- read_data()
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(data$Global_active_power~data$dataTime, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
plot(data$Voltage~data$dataTime, type = "l", xlab = "datatime", 
    ylab = "Voltage")
plot(data$Sub_metering_1~data$dataTime, type = "l", xlab = "", 
     ylab = "Energy sub metering")
lines(data$Sub_metering_2~data$dataTime, col = "red")
lines(data$Sub_metering_3~data$dataTime, col = "blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c("black", "red", "blue"), lty = c(1, 1, 1))
plot(data$Global_reactive_power~data$dataTime, type = "l", xlab = "datatime", 
     ylab = "Global Reactive Power")
dev.off()

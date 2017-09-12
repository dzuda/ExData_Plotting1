source('read_data.R')
data <- read_data()
png("plot3.png", width = 480, height = 480)
plot(data$Sub_metering_1~data$dataTime, type = "l", xlab = "", 
     ylab = "Energy sub metering")
lines(data$Sub_metering_2~data$dataTime, col = "red")
lines(data$Sub_metering_3~data$dataTime, col = "blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c("black", "red", "blue"), lty = c(1, 1, 1))
dev.off()

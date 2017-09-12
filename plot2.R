source('read_data.R')
data <- read_data()
png("plot2.png", width = 480, height = 480)
plot(data$Global_active_power~data$dataTime, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()

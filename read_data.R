library(data.table)
# Read data
read_data <- function(){
  data <- read.table("household_power_consumption.txt", header= TRUE, na.strings = "?", sep =';')
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  dataFiltered <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
  # dataFiltered$Time <- strptime(dataFiltered$Time, "%H:%M:%S")
  dataTime <- paste(dataFiltered$Date, dataFiltered$Time)
  dataTime <- as.POSIXct(dataTime)
  dataFiltered <- cbind(dataTime=dataTime, dataFiltered)
  dataFiltered
}
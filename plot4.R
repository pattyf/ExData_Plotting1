#
# Coursera Exploratory Data Analysis - Project 1
#
setwd("~/Documents/coursera/EDA_course/ExData_Plotting1")

#read in the data as a csv file
data <- read.csv("household_power_consumption.txt",na.strings='?', sep=";",stringsAsFactors=FALSE)

#make the date column a date data type
data$Date <- as.Date(data$Date, "%d/%m/%Y")

#Subset the data - We will only be using data from the dates 2007-02-01 and 2007-02-02
d2 <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# plot 4
png(file="plot4.png")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(d2, {
  plot(date_time,Global_active_power,type="line",ylab="Global Active Power (kilowatts)",xlab="")
  
  plot(date_time,Voltage,type="line",ylab="Voltage")
  
  plot(date_time,Sub_metering_1, xlab="", ylab="Energy Sub Metering", type="n")
  lines(date_time,Sub_metering_1,col="black")
  lines(date_time,Sub_metering_2,col="red")
  lines(date_time,Sub_metering_3,col="blue")
  legend("topright", pch="-", col = c("black", "red","blue"), legend = names(d2[7:9]))
  
  plot(date_time,Global_reactive_power,type="line", )
  mtext("Plot 4", outer = TRUE)
})
dev.off()

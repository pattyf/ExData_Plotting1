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

# plot3
png(file="plot3.png")
plot(d2$date_time,d2$Sub_metering_1, xlab="", ylab="Energy Sub Metering", type="n")
lines(d2$date_time,d2$Sub_metering_1,col="black")
lines(d2$date_time,d2$Sub_metering_2,col="red")
lines(d2$date_time,d2$Sub_metering_3,col="blue")
legend("topright", pch="-", col = c("black", "red","blue"), legend = names(d2[7:9]))
dev.off()


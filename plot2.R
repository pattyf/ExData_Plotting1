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

# plot2
png(file="plot2.png")
d2$day <- weekdays(d2$date)
d2$date_time <- as.POSIXct(paste(d2$Date, d2$Time), format="%Y-%m-%d %H:%M:%S")
with(d2, plot(date_time,Global_active_power,type="line",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()


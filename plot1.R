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

# plot1
png(file="plot1.png")
hist(d2$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kw)")
dev.off()


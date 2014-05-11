allData <- read.csv("household_power_consumption.txt", header=TRUE, sep=";")
allData[,c('Date')] <- as.Date(allData[,c('Date')], format='%d/%m/%Y')

data <- subset(allData, as.Date(Date) == '2007-02-01' | as.Date(Date) == '2007-02-02')
plot1 <- data[,c("Global_active_power")]
hist(plot1, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png")
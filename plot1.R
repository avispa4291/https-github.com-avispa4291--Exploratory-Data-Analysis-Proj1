powercom <- "./household_power_consumption.txt"

data <- read.table(powercom, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSet$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="blue", main="Global Active Power", xlab="Global Active Power (kilowatts)")


main_dir = "C:/Users/Ali_D/Desktop/D_S/my_codes/Exploratory/w1/project"
setwd(main_dir) 
filename <- "./dataset/household_power_consumption.txt"

data <- read.table(filename, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

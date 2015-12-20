data <- "ec/newecdata.rds"
ecdata <- readRDS(data)
png("ec/plot1.png", width = 480, height = 480)
hist(ecdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()
data <- "ec/newecdata.rds"
ecdata <- readRDS(data)
png("ec/plot2.png", width = 480, height = 480)
plot(ecdata$Time, ecdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
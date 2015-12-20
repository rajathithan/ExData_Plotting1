newecdata <- paste(getwd(), "/ec/ec.txt", sep = "")
if(file.exists(newecdata)){
        ec <- "ec/ec.txt"
        ecdata <- read.table(ec, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
        ecdata$Time <- strptime(paste(ecdata$Date, ecdata$Time), "%d/%m/%Y %H:%M:%S")
        ecdata$Date <- as.Date(ecdata$Date, "%d/%m/%Y")
        datfilter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
        ecdata <- subset(ecdata, Date %in% datfilter)
        newecdata <- paste(getwd(), "/", "ec", "/", "newecdata", ".rds", sep="")
        saveRDS(ecdata, newecdata)
} 
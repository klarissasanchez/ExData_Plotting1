##PLOT 3
##Reading Data and Cleaning Data
Main_Data <- read.table("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";"  )
Clean_Data<- subset(Main_Data,Main_Data$Date=="1/2/2007" | Main_Data$Date =="2/2/2007")

##Variables
Clean_datetime <- strptime(paste(Clean_Data$Date, Clean_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Clean_globalActivePower <- as.numeric(Clean_Data$Global_active_power)
Clean_subMetering1 <- as.numeric(Clean_Data$Sub_metering_1)
Clean_subMetering2 <- as.numeric(Clean_Data$Sub_metering_2)
Clean_subMetering3 <- as.numeric(Clean_Data$Sub_metering_3)

##Setting location and specifications of Plot
png("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/plot3.png", width=480, height=480)

##Plotting
plot(Clean_datetime, Clean_subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(Clean_datetime, Clean_subMetering2, type="l", col="red")
lines(Clean_datetime, Clean_subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
##PLOT 2
##Reading Data and Cleaning Data
Main_Data <- read.table("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";"  )
Clean_Data<- subset(Main_Data,Main_Data$Date=="1/2/2007" | Main_Data$Date =="2/2/2007")

##Variables
Clean_datetime <- strptime(paste(Clean_Data$Date, Clean_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Clean_globalActivePower <- as.numeric(Clean_Data$Global_active_power)

##Setting location and specifications of Plot
png("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/plot2.png", width=480, height=480)

## Plotting
plot(Clean_datetime, Clean_globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

##PLOT 1
##Reading Data and Cleaning Data
Main_Data <- read.table("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";"  )
Clean_Data<- subset(Main_Data,Main_Data$Date=="1/2/2007" | Main_Data$Date =="2/2/2007")

##Setting location and specifications of Plot
png("C:/Users/Klarissa/Documents/ACADEMICS/Data Science Track/Data/plot1.png", width=480, height=480)

##Plotting
hist(as.numeric(as.character(Clean_Data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()


#plot2
#read file adding some options
df <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

#using data from the dates 2007-02-01 and 2007-02-02
df_date <- rbind(df[df$Date == "1/2/2007", ], df[df$Date == "2/2/2007", ])

#transfer date to Date format
df_date$Datetime <- strptime(paste(df_date$Date, df_date$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

#create plot
plot(df_date$Datetime, df_date$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()

#save as png 
png("plot2.png", width = 480, height = 480)
plot(df_date$Datetime, df_date$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()

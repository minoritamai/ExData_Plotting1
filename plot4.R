#plot4
#read file adding some options
df <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

#using data from the dates 2007-02-01 and 2007-02-02
df_date <- rbind(df[df$Date == "1/2/2007", ], df[df$Date == "2/2/2007", ])

#transfer date to Date format
df_date$Datetime <- strptime(paste(df_date$Date, df_date$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

#plot topleft
plot(df_date$Datetime, df_date$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
#plot bottomleft
plot(df_date$Datetime, df_date$Sub_metering_1, xlab = "", ylab = "Energy sub metering",  type = "l")
lines(df_date$Datetime, df_date$Sub_metering_2, col = "red")
lines(df_date$Datetime, df_date$Sub_metering_3, col = "blue")
legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n")
#plot topright
plot(df_date$Datetime, df_date$Voltage, xlab = "datetime", ylab = "Voltage",  type = "l")
#plot bottomright
plot(df_date$Datetime, df_date$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power",  type = "l")
dev.off()

#save as png
png("plot4.png", width = 480, height = 480)
#make partition 
par(mfcol = c(2,2))
#create figure
plot(df_date$Datetime, df_date$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
plot(df_date$Datetime, df_date$Sub_metering_1, xlab = "", ylab = "Energy sub metering",  type = "l")
lines(df_date$Datetime, df_date$Sub_metering_2, col = "red")
lines(df_date$Datetime, df_date$Sub_metering_3, col = "blue")
legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n")
plot(df_date$Datetime, df_date$Voltage, xlab = "datetime", ylab = "Voltage",  type = "l")
plot(df_date$Datetime, df_date$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power",  type = "l")
dev.off()

#plot1
#read file adding some options
df <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

#using data from the dates 2007-02-01 and 2007-02-02
df_date <- rbind(df[df$Date == "1/2/2007", ], df[df$Date == "2/2/2007", ])

#create histgram 
hist(df_date$Global_active_power, xlab = "Global Active Power (kilowatts)",  
     main = "Global Active Power", col = "red")
dev.off()

#save as png 
png("plot1.png", width = 480, height = 480)
hist(df_date$Global_active_power, xlab = "Global Active Power (kilowatts)",  
     main = "Global Active Power", col = "red")
dev.off()

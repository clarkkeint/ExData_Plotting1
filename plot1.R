## constructs the plot1.png
plot1 <- function(){
  ## read the data form .txt
  data_init <- read.table("household_power_consumption.txt",sep = ";",header = TRUE)  
  ## get and convert used data into numeric
  Global_active_power <- data_init$Global_active_power[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ]
  Global_active_power <- as.numeric(paste(Global_active_power))
  ## Open PNg device; create 'plot1.png' in my working directory
  png(file = "plot1.png")
  ## plot figure
  hist(Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)",ylab = "Frequency", col = "Red")
  ##close the PNG device!
  dev.off()  
}

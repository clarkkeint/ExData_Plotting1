## constructs the plot3.png
plot3 <- function(){
  ## read the data form .txt
  data_init <- read.table("household_power_consumption.txt",sep = ";",header = TRUE)
  
  ## Get and convert used Date and Time variables to Date/Time classes in R
  Date_Time <- paste(data_init$Date[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ],data_init$Time[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ])
  Date_Time <- strptime(Date_Time,"%d/%m/%Y %H:%M:%S")
  
  ## get and convert used data into numeric
  Sub_metering_1 <- data_init$Sub_metering_1[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ]
  Sub_metering_1 <- as.numeric(paste(Sub_metering_1))
  
  Sub_metering_2 <- data_init$Sub_metering_2[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ]
  Sub_metering_2 <- as.numeric(paste(Sub_metering_2))
  
  Sub_metering_3 <- data_init$Sub_metering_3[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ]
  Sub_metering_3 <- as.numeric(paste(Sub_metering_3))
  
  ## set language in english
  Sys.setlocale("LC_TIME", "English") 
  ## Open PNg device; create 'plot1.png' in my working directory
  png(file = "plot3.png")
  ## plot figure   
  plot(Date_Time,Sub_metering_1,"l",main = "",xlab = "",ylab = "Energy sub metering",col = "black")
  lines(Date_Time,Sub_metering_2,col = "red")
  lines(Date_Time,Sub_metering_3,col = "blue")  
  ## add legend
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1, 1, 1),col = c("black","red","blue"))
  ##close the PNG device!
  dev.off() 
  
}
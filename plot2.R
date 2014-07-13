## constructs the plot2.png
plot2 <- function(){
  ## read the data form .txt
  data_init <- read.table("household_power_consumption.txt",sep = ";",header = TRUE)
  
  ## Get and convert used Date and Time variables to Date/Time classes in R
  Date_Time <- paste(data_init$Date[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ],data_init$Time[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ])
  Date_Time <- strptime(Date_Time,"%d/%m/%Y %H:%M:%S")
  
  ## get and convert used data into numeric
  Global_active_power <- data_init$Global_active_power[data_init$Date == "1/2/2007" | data_init$Date == "2/2/2007" ]
  Global_active_power <- as.numeric(paste(Global_active_power))
  
  ## set language in english
  Sys.setlocale("LC_TIME", "English") 
  ## Open PNg device; create 'plot1.png' in my working directory
  png(file = "plot2.png")
  ## plot figure
  plot(Date_Time,Global_active_power,"l",main = "",xlab = "",ylab = "Global Active Power (kilowatts)")
  ##close the PNG device!
  dev.off() 
 
}
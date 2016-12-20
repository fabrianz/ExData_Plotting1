source('loaddata.R')
dat=dataloader()
png2 <- function(dat){
      png(filename='plot2.png', width=480, height=480, units='px')
      plot(dat$DTP,dat$Global_active_power,type="l",xlab = "",ylab="Global Active Power (kilowatts)")
      dev.off()
}
dataloader <- function(){

library(sqldf)
data<- read.csv2.sql("household_power_consumption.txt",sql="select * from file where Date='1/2/2007' or Date='2/2/2007'")
for(i in 1:length(data[,1])){data[i,10]=paste(data[i,1],data[i,2])}
data[11]=lapply(data[10],strptime,"%d/%m/%Y %H:%M:%S")
names(data)[c(10,11)]=c("DT","DTP")
return(data)
}







   
      
      

rm(list=ls())
library(ggplot2)
setwd("C:/Users/Max/Desktop/laser/picture/plot")
library(readr)
#data<-read.table("C:/Users/Max/Desktop/laser/result/4000~7000.csv", header = FALSE, sep = ",",skip = 1)
data<-read.table("C:/Users/Max/Desktop/laser/result_cal.csv", header = FALSE, sep = ",",skip = 1)
ro=5
d=1
#xaxt='n',yaxt='n'
result=array(0,c(length(data[1,]),2))
for(i in c(1:length(data[1,])-1)){
  result[i,1]=data[ro,i+1]*d
}
for(i in c(1:length(data[1,])-1)){
  result[i,2]=data[ro,i+1]*d
}
par(new=T)
png("X_hist.png", width = 640, height = 360)
plot(result[,2],
     main="Plot of X",
     xlab="X",
     xaxt='n',yaxt='n'
     )

dev.off()     
hist(result[,2],
     main="Histogram of Total X",
     xlab="X",
     xaxt='n',yaxt='n'
     )
axis(0.3,a)
#X  + - combine  AND cal * 0.6
axis(2,at=seq(1,1))
qplot(result[,2])

qplot(result[,2], geom = "histogram")

+ ylim(limits=c(-10,10))
xlim(limits=c(0,3)

# set working directory (change this to fit your needs)
setwd('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data')

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data/load.data.R')

# open device
png(filename='plots/plot4.png',width=480,height=480,units='px')

# make 4 plots
par(mfrow=c(2,2))

#top left (1,1)
# plot data on top left (1,1)
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

#top right (1,2)
plot(power.consumption$DateTime,power.consumption$Voltage,xlab='datetime',ylab='Voltage',type='l')


#bottom left (2,1)
columnlines <- c('black','red','blue')
labels <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])

#bottom right (2,2)
plot(power.consumption$DateTime,power.consumption$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')


# Turn off device
x <- dev.off()

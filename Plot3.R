# set working directory (change this to fit your needs)
setwd('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data')

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data/load.data.R')

# open device
png(filename='plots/plot3.png',width=480,height=480,units='px')

# plot data
columnlines <- c('black','red','blue')
labels <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1,type='l',col=columnlines[1],xlab='',ylab='Energy sub metering')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=columnlines[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")

# Turn off device
x <- dev.off()
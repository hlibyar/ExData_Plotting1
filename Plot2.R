# set working directory (change this to fit your needs)
setwd('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data')

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data/load.data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)',xlab='',type='l')

# Turn off device
x<-dev.off()
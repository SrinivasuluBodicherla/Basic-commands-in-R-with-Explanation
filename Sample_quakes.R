# We are storing the data set into the e_quakes variable 
e_quakes<-datasets::quakes
# Lets see what we have in e_quakes
e_quakes # We have latittude, Longitude, depth, Magnitude and Stations with 1000 Observations and 5 Variables
# Lets select the only fisr two valraibles
e_quakes[,c(1,2)] # If the first part of the sqaure bracket is empty then that means we have selected all rows and first two coloumns
# Lets see the first few rows information along with the header
head(e_quakes)
# Lets see the last few rows, in the same way we have done in previous line
tail(e_quakes)
# Now we will see how to get Mean Meadian and standard Deviation for a single coloumn 
summary(e_quakes$stations)
# Now we will see how to get Mean Median and Standard Devieation for all the coloumns
summary(e_quakes)
# We will go with plots now...
par(mfrow=c(1,1),mar=c(2,5,2,1), las=1, bty="n")
plot(e_quakes$stations)
plot(e_quakes)
View(e_quakes)
plot(e_quakes$depth, main = 'Depth')
plot(e_quakes$stations, e_quakes$depth, main = 'Depth VS Stations', xlab = 'Stations', ylab = 'Depth')
par(mfrow=c(3,3),mar=c(2,5,2,1), las=1, bty="n")
plot(e_quakes$lat, type = 'l')
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$stations)
plot(e_quakes$long, type = 'l')
plot(e_quakes$depth, type = 'l')
plot(e_quakes$mag, type = 'l')
plot(e_quakes$stations, type = 'l')
plot(e_quakes$lat, type = 'l')
plot(e_quakes$lat, type = 'l')
par(mfrow=c(1,1),mar=c(2,5,2,1), las=1, bty="n")

# Now we will go for Bar plot for bar chart 
barplot(e_quakes$stations , main = 'Earth Quakes',
        xlab = 'Stations' , col = 'blue', horiz = T)
# Histogram
hist(e_quakes$stations, xlab = 'Stations', ylab = 'Frequency', col = 'Blue')

# Boxplot - Single
boxplot(e_quakes$stations)

#Box plot - Multiple
boxplot(e_quakes$stations, e_quakes$mag, e_quakes$depth, col = 'Blue')

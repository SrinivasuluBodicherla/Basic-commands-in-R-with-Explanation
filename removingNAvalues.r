install.packages("gmodels") # DOwnloading gmodels package and installing into R studio
library(gmodels)
install.packages("nycflights13")
data<-nycflights13::flights # We are using the dataset from R which is flights
View(data)
head(data)
dep_delay<-data$dep_delay
dep_delay1<-dep_delay[!is.na(dep_delay)] # Here we are removing the NA values in the dep_delay coloumn and storing the remaining values in Dep_delay1
ci(dep_delay1,confidence = 0.95) # By default the confidence interval will be 0.95 by using this we can come to know the delay of the flight by minutes

#Storing number of values in a vector and allcoting them in separate line

pain=c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
#the first 9 digits of the above vector will allocate in A in the same way the next 9 digits will allocate in B and same way for C too
drug=c(rep("A",9), rep("B",9), rep("C",9))
migrane=data.frame(pain,drug)
View(migrane)
boxplot(migrane)
plot(migrane)

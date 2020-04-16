#Load data
Nd<-read.csv("E:\\Data Science\\Data Science files\\NewspaperData.csv")

# Visualization
install.packages("lattice")
library(lattice)
dotplot(Nd$sunday, main="Dot Plot of Sunday Circulations",col="dodgerblue4")
dotplot(Nd$daily, main="Dot Plot of Daily Circulations", col="dodgerblue4")
boxplot(Nd$sunday,col="dodgerblue4")
boxplot(Nd$daily,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
colnames(Nd)
model<- lm(sunday~daily,data =Nd)
summary(model)
sun= 13.84 + (1.34*200) #If a company sells daily 200K news papers then the output of this equation will be the sales of news papers 

sun #i.e., 282K, a company will sell these many newspapers on Sunday 

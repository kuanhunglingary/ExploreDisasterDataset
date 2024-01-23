# Impute missing data
# Read csv file
# import csv
myData <- read.csv("Airline_data_Split2.csv")
View(myData)

# See the column"Age"
hist(myData$Age, freq=F, main='Age: Original Data', 
     col='darkgreen', ylim=c(0,0.04))
summary(myData$Age)
sum(is.na(myData$Age))

# aggregate(): mean of each Title
aggregate(Age~Title,myData,mean)

#
MrAge <- myData$Age[myData$Title=="Mr"]
summary(MrAge)
sd(MrAge, na.rm = TRUE)

#
myData$Age <- ifelse(is.na(myData$Age), myData$Title, myData$Age)

# Fill in missing value by mean
# ? ifelse()
myData$Age <- ifelse(myData$Title=="Capt" & is.na(myData$Age), 70, myData$Age)
myData$Age <- ifelse(myData$Title=="Col" & is.na(myData$Age), 58, myData$Age)
myData$Age <- ifelse(myData$Title=="Don" & is.na(myData$Age), 40, myData$Age)
myData$Age <- ifelse(myData$Title=="Dr" & is.na(myData$Age), 42, myData$Age)
myData$Age <- ifelse(myData$Title=="Jonkheer" & is.na(myData$Age), 38, myData$Age)
myData$Age <- ifelse(myData$Title=="Lady" & is.na(myData$Age), 48, myData$Age)
imyData$Age <- ifelse(myData$Title=="Major" & is.na(myData$Age), 48.5, myData$Age)
myData$Age <- ifelse(myData$Title=="Master" & is.na(myData$Age), 4.574167, myData$Age)
myData$Age <- ifelse(myData$Title=="Miss" & is.na(myData$Age), 21.773973, myData$Age)
myData$Age <- ifelse(myData$Title=="Mlle" & is.na(myData$Age), 24, myData$Age)
myData$Age <- ifelse(myData$Title=="Mme" & is.na(myData$Age), 24, myData$Age)
myData$Age <- ifelse(myData$Title=="Mr" & is.na(myData$Age), 32.36809, myData$Age)
myData$Age <- ifelse(myData$Title=="Mrs" & is.na(myData$Age), 35.898148, myData$Age)
myData$Age <- ifelse(myData$Title=="Ms" & is.na(myData$Age), 28, myData$Age)
myData$Age <- ifelse(myData$Title=="Rev" & is.na(myData$Age), 43.166667, myData$Age)
myData$Age <- ifelse(myData$Title=="Sir" & is.na(myData$Age), 49,myData$Age)
myData$Age <- ifelse(myData$Title=="th" & is.na(myData$Age), 33, myData$Age)

View(myData)
write.csv(myData, "Airline_data_ImputeMisssingValue3.csv")
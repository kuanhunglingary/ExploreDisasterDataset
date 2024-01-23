# Impute Missing Values

# for(i in 1:ncol(data)){
#   data[is.na(data[,i]), i] <- mean(data[,i], na.rm = TRUE)
# }

# import csv
myData <- read.csv("Airline_data_Split2.csv")
View(myData)

#
aggregate(Age~Title,myData,mean)

# Plot graph: original data
hist(myData$Age, freq=NULL, main='Age: Original Data', 
     col='darkgreen', ylim=c(0,500),xlab = "Age", ylab = "Population")

# Simple mean imputation
myData$Age <- ifelse(is.na(myData$Age), mean(myData$Age, na.rm=TRUE), myData$Age)

# Convert NUM to INT
myData$Age <- as.integer(myData$Age)
View(myData)

# Plot graph: new data
?hist
hist(myData$Age, freq=NULL, main='Age: New Data', 
     col='red', ylim=c(0,500),xlab = "Age", ylab = "Population")

write.csv(myData, "Airline_data_ImputeMisssingValue2.csv")
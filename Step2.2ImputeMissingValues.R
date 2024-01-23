# Impute Missing Values
# import csv
myData <- read.csv("Airline_data_Split.csv")
View(myData)

# Simple mean imputation
myData$Age <- ifelse(is.na(myData$Age), mean(myData$Age, na.rm=TRUE), myData$Age)

# Convert NUM to INT
myData$Age <- as.integer(myData$Age)
View(myData)

write.csv(myData, "Airline_data_ImputeMisssingValue.csv")

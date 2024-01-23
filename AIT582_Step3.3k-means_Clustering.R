# 3.3 k-means Clustering
# source: http://www.rdatamining.com/examples/kmeans-clustering

# Read CSV file
myData <- read.csv("Airline_data_Gender.csv")
# View(myData)

# 4 Attributes: "SUCCESS","Age","SEATCLASS","Gender"
# Preprocess data
myData <- myData[,c("SUCCESS","Age","SEATCLASS","Gender")]
# View(myData)

# Implementation for Dataframe
str(myData)

new_myData <-myData 
new_myData$Gender <- NULL
kc <- kmeans(new_myData, 3, nstart = 1)

# Compare the Gender label with the clustering result
table(myData$Gender, kc$cluster)
plot(new_myData[c("SUCCESS", "Age")], col=kc$cluster)
points(kc$centers[,c("SUCCESS", "Age")], col=1:3, pch=8, cex=2)

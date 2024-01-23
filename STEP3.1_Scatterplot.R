# PCA and K-means Clustering
# import csv
myData <- read.csv("Airline_data_Gender.csv")
View(myData)

# scatterplot #1
plot(myData[,9:14])

# scatterplot #2
comp <- data.frame(myData[,10:14])
plot(comp, pch=16, col=rgb(0,0,0,0.5))

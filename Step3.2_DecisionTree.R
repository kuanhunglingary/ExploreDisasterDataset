# 3.2 Decision Tree
# source: http://www.rdatamining.com/examples/decision-tree
library(grid)
library(mvtnorm)
library(modeltools)
library(stats4)
library(party)
# Read CSV file
myData <- read.csv("Airline_data_Gender.csv")
# View(myData)

# ------------------------------------------------------------------------------ #

# 4 Attributes: "SUCCESS","Age","SEATCLASS","Gender"
# Preprocess data
myData <- myData[,c("SUCCESS","Age","SEATCLASS","Gender")]
# View(myData)

# Implementation for Dataframe
str(myData)

#
myData_ctree <- ctree(Gender ~SUCCESS + Age + SEATCLASS, data = myData)

print(myData_ctree)

plot(myData_ctree)

plot(myData_ctree, type="simple")

# ------------------------------------------------------------------------------ #


# 5 Attributes: "SUCCESS","Age","SEATCLASS","GUESTS","Gender"
# Preprocess data
myData <- myData[,c("SUCCESS","Age","SEATCLASS","GUESTS","Gender")]
# View(myData)

# Implementation for Dataframe
str(myData)

#
myData_ctree <- ctree(Gender ~SUCCESS + Age + SEATCLASS + GUESTS, data = myData)

print(myData_ctree)

plot(myData_ctree)

plot(myData_ctree, type="simple")
# ------------------------------------------------------------------------------ #

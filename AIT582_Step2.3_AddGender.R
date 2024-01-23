# Step2.3 Add a column"Gender"
#Import csv file
myData <- read.csv("Airline_data_ImputeMisssingValue2.csv")
View(myData)
# aggregate(): mean of each Title
aggregate(Age~Title,myData,mean)

# Add a new column"Gender" by copying Title
Gender <- myData$Title
myData <- cbind(myData,Gender)
View(myData)

# Replace values 
myData$Gender <- gsub('Capt','Male',myData$Gender)
myData$Gender <- gsub('Col','Male',myData$Gender)
myData$Gender <- gsub('Don','Male',myData$Gender)
myData$Gender <- gsub('Dr','Male',myData$Gender)
myData$Gender <- gsub('Jonkheer','Male',myData$Gender)
myData$Gender <- gsub('Lady','Female',myData$Gender)
myData$Gender <- gsub('Major','Male',myData$Gender)
myData$Gender <- gsub('Master','Male',myData$Gender)
myData$Gender <- gsub('Miss','Female',myData$Gender)
myData$Gender <- gsub('Mlle','Female',myData$Gender)
myData$Gender <- gsub('Mme','Male',myData$Gender)
myData$Gender <- gsub('Mr','Male',myData$Gender)
myData$Gender <- gsub('Mrs','Female',myData$Gender)
myData$Gender <- gsub('Ms','Female',myData$Gender)
myData$Gender <- gsub('Rev','Male',myData$Gender)
myData$Gender <- gsub('Sir','Male',myData$Gender)
myData$Gender <- gsub('th','Female',myData$Gender)

myData$Gender <- gsub('Males','Female',myData$Gender)

View(myData)

# Save as csv file
write.csv(myData,"Airline_data_Gender.csv")

# Calculate # of Male and Female
table(myData$Gender)

# Pie Chart from data frame with Appended Sample Sizes
mytable <- table(myData$Gender)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable,edges = 300, col = rainbow(2), radius = 0.9, 
    main="Gender")

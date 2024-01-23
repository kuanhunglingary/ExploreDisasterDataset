# Step 2 Metadata Extraction and Imputation

# Split a column from csv file
library(tidyr)

# Read Data
myData = read.csv("Airline_data.csv")
# View(myData)

# Duplicate the column "DESCRIPTION"
DESCRIPTION2 <- myData$DESCRIPTION
myData <- cbind(myData,DESCRIPTION2)
View(myData)

# separate data
myData1 <- separate(myData, DESCRIPTION2, c("DESCRIPTION2","Age"), sep = ";")
myData2 <- separate(myData1, DESCRIPTION2, c("Fisrt Name","DESCRIPTION2"), sep = ",")
# View(myData2)
myData3 <- separate(myData2, DESCRIPTION2, c("Title","Last Name"), sep = ". ")
View(myData3)

# Save as CSV file
write.csv(myData3, "Airline_data_Split.csv")
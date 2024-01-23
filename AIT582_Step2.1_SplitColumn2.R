# Step 2 Metadata Extraction and Imputation

# Split a column from csv file
library(tidyr)

# Read Data
myData = read.csv("Airline_data.csv")
# View(myData)

# separate data
myData1 <- separate(myData, DESCRIPTION, c("DESCRIPTION","Age"), sep = ";")

View(myData1)
myData2 <- separate(myData1, DESCRIPTION, c("Fisrt Name","DESCRIPTION"), sep = ",")
# View(myData2)
myData3 <- separate(myData2, DESCRIPTION, c("Title","Last Name"), sep = ". ")
View(myData3)

# Save as CSV file
write.csv(myData3, "Airline_data_Split2.csv")
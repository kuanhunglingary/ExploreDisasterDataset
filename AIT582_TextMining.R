# Text Mining - Word Cloud
# Purpose: Find most common names in airline dataset
# Last page of presentation
library(NLP)
library(tm)
library(SnowballC)
library(RColorBrewer)
library(wordcloud)

# Read CSV file
myData = read.csv("Airline_data_ImputeMisssingValue.csv",stringsAsFactors = FALSE)
View(myData)

# Dataframe to String
myData2 <- toString(myData$DESCRIPTION)
myData2

# Text mining
myData3 <- Corpus(VectorSource(myData2))

# Remove Punctuation
myData3 <- tm_map(myData3, removePunctuation)

# Lower case
myData3 <- tm_map(myData3, content_transformer(tolower))

myData3 <- tm_map(myData3, PlainTextDocument)

# Remove Stop words
myData3 <- tm_map(myData3, removeWords, stopwords('english'))

# Remove title
 aggregate(Age~Title,myData,mean) ## Find title

myData3 <- tm_map(myData3, removeWords, c("capt","col","don","dr","jonkheer","lady","major",
                                          "master","miss","mlle","mme","mr","mrs","ms","rev",
                                          "sir"))

myData3 <- tm_map(myData3, stemDocument)

myData3
# Word Cloud
wordcloud(myData3, max.words = 100, random.order = FALSE)

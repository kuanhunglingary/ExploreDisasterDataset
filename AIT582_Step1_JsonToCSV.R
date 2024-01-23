library(RJSONIO)
# from the website
AirlineRaw<-fromJSON("http://ist.gmu.edu/~hpurohit/courses/ait582-proj-data-spring16.json")

# if downloaded, just upload
#AirlineRaw<-fromJSON("ait582_proj_data_spring16.json")

length(AirlineRaw)

# We can coerce this to a data.frame
Airline_data <- do.call(rbind, AirlineRaw)
# Then write it to a flat csv file
Airline_data <- Airline_data[,c("FARE","DESCRIPTION","SUCCESS","SEATCLAS","GUESTS","CUSTOMERID")]
Airline_data <- Airline_data[,c("CUSTOMERID","SUCCESS","DESCRIPTION","SEATCLASS","GUESTS","FARE")]
Airline_data <- Airline_data[-1,]
write.csv(Airline_data, "Airline_data.csv")

head(Airline_data)
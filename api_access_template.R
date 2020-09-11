#This script is a general template for accessing APIs through R

###API information needed:
#How is it authenticated
#What is the pricing?
#What endpoints are available?
#What are the rate limits?
#what format is the reponse?

#load necesssary libraries
library(RCurl)#to make http connection to API
library(RJSONIO)#to transform JSON response to data frame

#input API key
#API key is registered to [[[email address]]]
api_key <- ""

#documentation on parameters and endpoints here: [[[documentation URL]]]


#set parameters
parameter1 <- ""

#set parameters
parameter2 <- ""

#set parameters
parameter3 <- ""


#construct the URL for the request
url <- paste0("https://domain/endpoint?apiKey=", api_key, "&param1=", parameter1)
url


#make the request
raw <- getURL(url)
#View(raw)

#transform to dataframe
df <- fromJSON(raw, nullValue = NA)#we need to convert the json NULL values to NAs so R 

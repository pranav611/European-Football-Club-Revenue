install.packages("dplyr")
library(dplyr)

install.packages("readxl")
library(readxl)

#Importing the data for inflation rate
Inlfation_data <- read_excel("/Users/pranav/Desktop/mymaininflationrate.xlsx") 

#Importing the revenue data 
Top5LeaguesRevenue <- read_excel("/Users/pranav/Desktop/total revenue of big 5 leagues.xlsx")

#Importing the linear regression data
linear_regression_data <- read_excel("/Users/pranav/Desktop/main_linear_regression.xlsx")
glimpse(linear_regression_data)

#Making a plot 
ggplot (linear_regression_data, aes (x=Top5LeaguesRevenue, y= Inlfation_data )) + geompoint()

#Finding the linear regression without OVB
test_revenue <- lm(Total_revenue ~ Inflation_rate, data = linear_regression_data)
summary(test_revenue)

#Finding the linear regression with OVB
test_revenue <- lm(Total_revenue ~ Inflation_rate + Unemployment_rate, data = linear_regression_data)
summary(test_revenue)

# Install necessary packages 
install.packages("tidyverse")  
install.packages("ggpubr")    
install.packages("broom")     
# Load the libraries
library(tidyverse)
library(ggpubr)
library(broom)
library(readr)
#Read the Data set / Csv file 
Kalyan_Income_Statements1 <- read_csv("~/Downloads/Kalyan Income Statements1.csv")
View(Kalyan_Income_Statements1)
head(Kalyan_Income_Statements1)
str(Kalyan_Income_Statements1)
summary(Kalyan_Income_Statements1)
Kalyan_Income_Statements1$Year <- as.factor(Kalyan_Income_Statements1$Year)
sum(is.na(Kalyan_Income_Statements1))
#Simple Linear Regression
model1 <- lm(`Net Income` ~  Revenue , data = Kalyan_Income_Statements1)
summary(model1)
#Multiple Regression model
model2<- lm(`Net Income` ~ Revenue + `Cost Of Revenue` + `Gross Profit Margin` + 
              `Operating Expenses` + `EBITDA Ratio` + `Operating Income Margin`, 
            data = Kalyan_Income_Statements1)
summary(model2)





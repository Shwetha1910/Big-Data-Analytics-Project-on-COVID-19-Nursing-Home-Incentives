setwd("C:/Users/shwet/OneDrive/Documents/AIT R")

library(tidyverse)
library(ggplot2)

ProviderFund <- read.csv('ProviderNursingFund.csv', header = TRUE, sep = ",", as.is = TRUE)
ProviderFund
str(ProviderFund)
class(ProviderFund)

ggplot(ProviderFund, aes(x=City, y=reorder(Facility.Infection.Rate.Per.1000.Resident.Weeks,City)))+
  geom_point(shape = 21,
           fill="blue", size = 3, color = "black")+
  labs(x = "City",
       y = "Total Covid Infection Rate per Resident",
       title = "Facilities and its Covid Infection Rate")

ggplot(data=ProviderFund, aes(x=Infection.Performance.Score)) +
  geom_density(fill = "cyan", color = "black")

ggplot(ProviderFund,aes(x=State,fill=Facility.Infection.Rate.Per.1000.Resident.Weeks))+
  geom_bar(color ="black", fill = "green") +
  labs(x="State",
       y="Facility Infection Rate per 1000 Resident",
       title="Covid Infection Rate as per facility in each State")

ggplot(data=ProviderFund, aes(x=Mortality.Adjustment))+
  geom_histogram(fill="yellow",color="black",bins=10) +
  labs(x="Mortality Percentage",
       title = "Mortality Percentage adjacent to facility's infection performance")
  xlim(0,3.5)

ggplot(ProviderFund, aes(x=County.Infection.Rate.Per.1000.Resident.Weeks, y=Infection.Performance.Score))+
  geom_point(color ="black", fill = "violet", size = 1) +
  labs(x="County Infection Rate",
       y="Infection Performance Score",
       title="Infection Performance Score corresponding to County infection rate")

ProviderFund[!duplicated(ProviderFund$State),]

names(ProviderFund)
str(ProviderFund)
head(ProviderFund)
summary(ProviderFund)

ggplot(ProviderFund,aes(x=Performance.Month,fill=Mortality.Adjustment))+
  geom_bar(color ="black", fill = "pink") +
  labs(x="Performance Month",
       y="Mortality Adjustment per Month",
       title="Percentage of Mortality rate according to month")

ggplot(ProviderFund,aes(x=State,fill=Final.Payment))+
  geom_bar(color ="black", fill = "purple") +
  labs(x="State",
       y="Final Payment",
       title="Total Payment according to each state")

# an R script to use dplyr and ggplot to visualize the keeling curve of CO2 concentrations

#Kaleigh Johnston
#k.johnston@ku.edu
#February 25, 2026

#first step install packages in console
library("dplyr")
library("ggplot2")

#load in csv data
mlo_data <- read.csv("data/monthly_in_situ_co2_mlo_cleaned.csv")

#use a dplyr pipe and filter function to get rid of -99 values
mlo_data %>%
  filter(CO2>0)%>%
  filter(Yr == 1985)%>%
  ggplot(aes(x = Date.1,
             y = CO2)) +
  geom_line()
#for ggplot you need 1. data 2. aesthetics 3. geometry

ggsave("output/ggplot_keeling.png")

# A script to read in and plot the MLO Keeling curve CO2
# data using some good R practices

# Kaleigh Johnston
# k.johnston@ku.edu
# February 18, 2026

# load in csv data
mlo_data <- read.csv("data/monthly_in_situ_co2_mlo_cleaned.csv")

# make a scatterplot of the CO2 concentrations
# to get rid of data not present (marked as -99.99 in data) = > 0
# "l" = line plot
# ylab = y axis label
# main = main title of graph
# to save graph in code = png("title")... + dev.off = close/save file

png("output/keeling_curve.png")
plot(mlo_data$CO2 [mlo_data$CO2 > 0],
     type = "l",
     ylab = "CO2 Concentration in ppm",
     main = "CO2 Concentration at Mauna Loa")
dev.off()


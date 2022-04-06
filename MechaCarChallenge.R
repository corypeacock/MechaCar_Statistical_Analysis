## MechaCar Statistical Analysis

# load libraries
library(dplyr)

# import and read data
base_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(base_table)

# initial linear regression & summary
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table))

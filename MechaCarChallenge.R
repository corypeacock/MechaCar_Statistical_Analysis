## MechaCar Statistical Analysis

## Deliverable 1

# load libraries
library(dplyr)

# import and read data
base_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(base_table)

# initial linear regression & summary
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table))

## Deliverable 2
suspension_table <- read.csv(file='suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_table)
summary(suspension_table)

# create df summary 
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary


# create a lot summary
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary

## Deliverable 3
# sample table
sample_table <- suspension_table %>% sample_n(50)
head(sample_table)

# t-test for sample normality
t.test(sample_table$PSI, mu=1500)

# set up lots
lot_1 <- suspension_table %>% filter(Manufacturing_Lot=="Lot1")
lot_2 <- suspension_table %>% filter(Manufacturing_Lot=="Lot2")
lot_3 <- suspension_table %>% filter(Manufacturing_Lot=="Lot3")

# Lot 1 t-test
t.test(lot_1$PSI, mu=1500)

# Lot 2 t-test
t.test(lot_2$PSI, mu=1500)

# Lot 3 t-test
t.test(lot_3$PSI, mu=1500)

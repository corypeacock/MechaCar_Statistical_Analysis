# MechaCar_Statistical_Analysis
BC Mod15

## Overview
lorem ipsum

### Resources
Programming Language(s): R  
Data: MechaCar_mpg.csv, Suspension_Coil.csv  

## Results
lorem ipsum

### Linear Regression to Predict MPG
In order to determine the significance of variables predicting Miles Per Gallon (MPG), a multiple linear regression model was run in R using the following line of code:  

  lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table)  

While this provides the model and coefficients for each variable. We need the following code to provide the information to answer some relevant questions:  

  summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table))  

![Multiple_linear_regression_model](images/Multiple_linear_regression_model.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?  
The two variables that appeared to have a significant impact on MPG were vehicle_length and ground_clearance. This is due to their respective p-values each being lower than 0.05. The p-value of vehicle_length was 2.60e-12. The p-value of ground_clearance was 5.21e-08.  

#### Is the slope of the linear model considered to be zero? why or why not?
The overall p-value of the model was 5.35e-11. This is significantly lower than 0.05, so we conclude that there is significant evidence to reject the null hypothesis. That is, the slope is not zero.  

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  
The multiple R-squared value of this formula is 0.7149. With two variables providing a significant impact on MPG, the model explains approximately 71.5% of the impact on MPG. The other variables in our model (vehicle_weight, spoiler_angle, and AWD) do not have a significant impact on the MPG. Further exploration would be required to determine their full impact.  

### LOREM IPSUM
lorem ipsum

### LOREM IPSUM
lorem ipsum

## LOREM IPSUM
lorem ipsum

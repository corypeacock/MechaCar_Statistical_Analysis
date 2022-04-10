# MechaCar_Statistical_Analysis
BC Mod15  

## Overview
The overall process in this analysis is to examine the MechaCar statistically, looking at miles per gallon and suspension coils. Such analysis should allow modification of the MechaCar to be made in order to improve performance. Ultimately, the intension is to improve the MechaCar against all competition in the field.  

### Resources
Programming Language(s): R  
Data: MechaCar_mpg.csv, Suspension_Coil.csv  

## Results
The following results were considered in the analysis of MechCar:  
* A linear regression to predict miles per gallon  
* Summary statistics on suspension coils  
* T-Tests on suspension coils  

### Linear Regression to Predict MPG
In order to determine the significance of variables predicting Miles Per Gallon (MPG), a multiple linear regression model was run in R using the following line of code:  

```
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table)
```  

While this provides the model and coefficients for each variable. We need the following code to provide the information to answer some relevant questions:  

```
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=base_table))
```  

![Multiple_linear_regression_model](images/multiple_linear_regression_model.png)  

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?  
The two variables that appeared to have a significant impact on MPG were vehicle_length and ground_clearance. This is due to their respective p-values each being lower than 0.05. The p-value of vehicle_length was 2.60e-12. The p-value of ground_clearance was 5.21e-08.  

#### Is the slope of the linear model considered to be zero? why or why not?  
The overall p-value of the model was 5.35e-11. This is significantly lower than 0.05, so we conclude that there is significant evidence to reject the null hypothesis. That is, the slope is not zero.  

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  
The multiple R-squared value of this formula is 0.7149. With two variables providing a significant impact on MPG, the model explains approximately 71.5% of the impact on MPG. The other variables in our model (vehicle_weight, spoiler_angle, and AWD) do not have a significant impact on the MPG. Further exploration would be required to determine their full impact.  

### Summary Statistics on Suspension Coils  
The following images provide the summary statistics on the Suspension Coils. The first image shows the entire dataset. The second provide summary statistics based on manufacturing lot.  

![total_summary](images/total_summary.png)  

![lot_summary](images/lot_summary.png)  

#### Does the current manufacturing data meet the design specification (must not exceed 100 PSI) for all manufacturing lots in total and each lot individually? Why or why not?  
The design specification regarding PSI is that the variance must not exceed 100 PSI. The total summary shows a variance of 62.29 PSI which is acceptable. Regarding the variance by lot, Lots 1 and 2 meed the design specifications, with a variance of 0.98 (Lot 1) and 7.47 (Lot 2). Lot 3, however, shows a variance far outside of the design specifications, with a variance of 170.29.  

### T-Tests on Suspension Coils  
T-tests were performed both on a random sample and on individual manufacturing lots in order to determine whether the PSI differed significantlyfrom the population mean of 1,500 PSI.  

![ttest_one_sample](images/ttest_one_sample.png)  

The p-vale for our random sample subset of the population was 0.225. This is above our significance level of 0.05. Therefore, there is not sufficient evidence to reject the null hypothesis. This suggests that the two populations are statistically similar.  

![ttest_lot_1](images/ttest_lot_1.png)  

The p-vale for the Lot 1 subset of the population was 1. This is above our significance level of 0.05. Therefore, there is not sufficient evidence to reject the null hypothesis. This suggests that the two populations are statistically similar.  

![ttest_lot_2](images/ttest_lot_2.png)  

The p-vale for the Lot 2 subset of the population was 0.607. This is above our significance level of 0.05. Therefore, there is not sufficient evidence to reject the null hypothesis. This suggests that the two populations are statistically similar.  

![ttest_lot_3](images/ttest_lot_3.png)  

The p-vale for the Lot 3 subset of the population was 0.042. This is below our significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis. The two populations are not statistically similar to one another.  

## Study Design: MechaCar vs Competition  
As states in the Overview section above, the intent of this study is to provide actionable analysis of the MechaCar in order to improve the MechaCar against the competition. Further study should conform to the following points and questions.  

AutosRUs' new car, the MechaCar, is attempting to occupy the urban-eco-warrior niche in the market. Therefore, while there are many viable questions that could guide our research, two are of particular interest: fuel-efficiency and safety ratings.

The questions should guide our quantitative research are similar, so we will focus here only on fuel efficiency.

```
"Are there statistically significant differences in the average city fuel efficiency between MechaCar and its competitors?"
```  

Our hypotheses:  

```
Null hypothesis: There is no difference between MechaCar's average city fuel efficiency and its competitors.

Alternative hypothesis: There is a difference between MechaCar's average city fuel efficiency and its competitors.
```  

The statistical test that would inform our analysis would be a two-sample t-test. This is due to the data (below), the independent variable being dichotomous (Sample A-MechaCar vs Sample B-competition), and the dependent variable being continuous (average city MPG).  

The data used would be:
* a large data set of MechaCar's city fuel efficiency for Sample A,  
* a large data set of the competition's city fuel efficiency for Sample B.  

A similar study could be conducted on safety ratings. In such a case the above study would be repeated with safety ratings replacing city MPG as the dependent variable in question.  

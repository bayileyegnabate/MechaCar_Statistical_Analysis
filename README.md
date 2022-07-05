# MechaCar Analysis

## Overview of the analysis
The goal of this analysis is to use different statistical tests and summary statistics in order to get some insight into AutosRUs’ manufacturing using the production data of MechaCar prototypes.

## Softwares/Tools
- R version 4.2.0 
- RStudio build 492

## Linear Regression to Predict MPG
- The summary of the linear model shows very small p-values for the vehicle_length and ground clearance variables. Therefore, these two variables are expected to have a **non-random effect** on the MPG.This conclusion is reinforced by the high *r-squared value of 0.7*, which shows a significant correlation. 
 

## Summary Statistics on Suspension Coils
- The summary result shows a variance of 62 which is less than the design specification (100). This shows that the current manufacturing data does meet the design specification.


## T-Tests on Suspension Coils
- H<sub>0</sub>: There is **no** significant difference between the means
- H<sub>a</sub>: There **is** a difference between the means

- The combined t-test results in a **p-value** of **0.0.06**. Assuming the common significance level of **0.05** percent, the calculated p-value is greater than the significance level. Therefore, there is *no sufficient evidence* to reject the null hypothesis and we conclude that *the two means are statistically similar*.

- **Lot1**: The t-test for Lot1 results in a p-value of 1. Hence, there is *no sufficient evidence* to reject the null hypothesis. 

- **Lot2**: The t-test for Lot2 results in a p-value of 0.61. Once more, there is *no sufficient evidence* to reject the null hypothesis.
 
- **Lot3**: The t-test for Lot3 results in a p-value of 0.04, which is less than the assumed significance level of 0.05. In this case we reject the null hypothesis, and conclude that there is indeed the two means show a statistical difference. 

## Study Design: MechaCar vs Competition
A study to compare the **safety ratings** of MechaCar with the Competition.
- H<sub>0</sub>: The average safety ratings of Mecha cars are not different from competition.
- H<sub>a</sub>: The average safety ratings of Mecha cars is greater than the competition
- use *Independent* **t-test** to compare the average safety ratings
- get/include safety ratings data



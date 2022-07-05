####################################
# DELIVERABLE 1                    #
# Linear Regression to Predict MPG #
####################################
# load dplyr
library(dplyr)

# import and read data
mechacar <- read.csv('MechaCar_mpg.csv')
head(mechacar)

# attach
attach(mechacar)
# perform multiple linear regression
lm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+
           ground_clearance+AWD, data = mechacar)
# use the summary() function to determine the p-value and 
# the r-squared value for the linear regression
summary(lm)

###############################################
# DELIVERABLE 2                               #
# Create Visualizations for the Trip Analysis #
###############################################
# import data
suspension_coil <- read.csv('Suspension_Coil.csv')

# creates a total_summary data frame on the PSI column
total_summary <- suspension_coil %>%
  summarize(Mean=mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),
            .groups = 'keep'
            )

# creates a lot_summary data frame using group_by() and 
# the summarize() function 
lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),
            .groups = 'keep'
            )

###############################################
# DELIVERABLE 3                               #
# T-Tests on Suspension Coils                 #
###############################################
# check for normality
ggplot(suspension_coil, aes(x=PSI))+
  geom_density()

# t-test
pop_mean = 1500
t.test(suspension_coil$PSI, mu=pop_mean)

# t-test: Lot1
lot1 <- suspension_coil %>%
  filter(Manufacturing_Lot == 'Lot1')
t.test(lot1$PSI, mu=pop_mean)

# t-test: Lot2
lot2 <- suspension_coil %>%
  filter(Manufacturing_Lot == 'Lot2')
t.test(lot2$PSI, mu=pop_mean)

# t-test: Lot3
lot3 <- suspension_coil %>%
  filter(Manufacturing_Lot == 'Lot3')
t.test(lot3$PSI, mu=pop_mean)

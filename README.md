# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG


To predict the miles_per_gallon (mpg) dependent variable, we can add 
all variables of interest such as vehicle_length, vehicle_weight, spoiler_angle,
ground_clearance, AWD  as independent variables to a multiple linear regression model.

![png](https://github.com/Atomickilroy/MechaCar_Statistical_Analysis/blob/main/Multiple%20Linear%20Regression%20Model_mpg.png)

# Conclusion 
-----------
The r-squared value is 0.6825, which means that roughly 68.25% of the
variability of our dependent variable (psi _predictions)
is explained using this linear model.

The p-values for spoiler angle, vehicle weight, and AWD are above the assumed 
significance value of 0.05. Therefore we can reject the null hypothesis that those 
variables are by random and do play a role in the mpg of the vehicle.  The remaining three fail to reject the null hypothesis and therefore don't play much of a role. 


## Summary Statistics on Suspension Coils


The suspension coil’s PSI continuous variable across all manufacturing lots

![png](https://github.com/Atomickilroy/MechaCar_Statistical_Analysis/blob/main/PSI%20Table.png)

PSI metrics for each lot: 

![png](https://github.com/Atomickilroy/MechaCar_Statistical_Analysis/blob/main/PSI%20Table%202.png)

# Conclusion 
-----------
Background:The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Analysis: Based on the metrics of each lot in conjunction with current manufacturing design specification across the manufacturing lots. The data indicates that there is a significant difference between lot 3 and lot 1 and 2. 



## T-Tests on Suspension Coils

T-tests help further our understanding of the data that is not prevalent at face value. 

The results below indicate that if a suspension were to be incorporated into the MechaCar's prototype it should first come from lot 1 or lot 2 could also be selected because both are above the 0.05 significance standard. Lot three on the other hand should not be used because its p-value fell below the 0.05 threshold. 




![png](https://github.com/Atomickilroy/MechaCar_Statistical_Analysis/blob/main/Lots%201-3.png)


## Study Design: MechaCar vs Competition

To understand how MechaCar stacks up with the competition I would first want to understand the market. By understanding the customer base first. I could determine what vehicles are selling in a specific demographic or more specifically in our target market. MechaCar could have the best all round car but if we were not at the top of the chart then what does the Competition have that we don't. 

With this initial hypothesis I would first use a chi-test to find what is important to the customer through the frequency of answers of performance vs looks. Then I would move on to a A/B model to understand Mechacars customer base. If we can maintain the current body with tweeks and focus on the mechanical side things or vice versa. 

nce the understanding of the customer is satisfied. I would look at the competition's vehicles. Understand the looks vs performance in comparison to MechaCar with first a linear regression of sales of time. To cross reference changes that caused peaks, pivots and where the competition seems to allocate money towards.  

Lastly in the hopes of using a Two way ANOVA test to predict the balance of asstitices vs performance.

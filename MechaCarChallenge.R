

#-----------------------------------------------------------

#Deliverable 1 Multiple Linear Regression to Predict

#-----------------------------------------------------------

#To predict the miles_per_gallon (mpg) dependent variable, we can add 
#all variables of interest such as vehicle_length, vehicle_weight, spoiler_angle,
#ground_clearance, AWD  as independent
#variables to a multiple linear regression model.

#-----------------------------------------------------------

MeachaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MeachaCar_table)


#generate multiple linear regression model

lm( mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD ,data=MeachaCar_table )

#summary(lm(vehicle_weight ~ mpg + ground_clearance + spoiler_angle ,data=MeachaCar_table))
summary(lm( mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD ,data=MeachaCar_table ))

#-----------------------------------------------------------

#$ the r-squared value is 0.6825, which means that roughly 68.25% of the
#variability of our dependent variable (mpg _predictions)
#is explained using this linear model

#------------------------------------------------------------


#------------------------------------------------------------

#Deliverable 2 Visualizations for the Trip Analysis

#------------------------------------------------------------

#Import the csv

Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(Suspension_table)

#create summary table ?summarize()

total_summary <- Suspension_table %>%  summarize(mean_psi = mean(Suspension_table$PSI),
                                                 median_psi = median(Suspension_table$PSI),
                                                 Varience_PSI = var(Suspension_table$PSI),
                                                 Standard_Divation= sd(Suspension_table$PSI),
                                                 .groups = 'keep')
#Print 
total_summary
                                                                   
#------------------------------------------------------------                                                                     

#Group each manufacturing lot by the mean, median, variance, and standard deviation

lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(mean_psi = mean(PSI,),
                                                                              median_psi = median(PSI),
                                                                              Varience_PSI = var(PSI),
                                                                              Standard_Divation= sd(PSI),
                                                                              .groups = 'keep')
head(lot_summary)



#-----------------------------------------------------------

#Deliverable 3  T-Tests on Suspension Coils

#-----------------------------------------------------------

#Is the PSI across all manufacturing lots is statistically different
#from the population mean of 1,500 pounds per square inch

t.test(Suspension_table$PSI, mu=(1500))


      #One Sample t-test

# data:  Suspension_table$PSI
# t = -1.8931, df = 149, p-value = 0.06028
 #alternative hypothesis: true mean is not equal to 1500
# 95 percent confidence interval:
# 1497.507 1500.053
# sample estimates:
# mean of x 
  #1498.78 


#-----------------------------------------------------------

#------------------------------------------------------------

#determine if the PSI for each manufacturing lot is statistically
#different from the population mean of 1,500 pounds per square inch

Lot_1 <- t.test(subset(Suspension_table, Manufacturing_Lot == 'Lot1')$PSI, mu=(1500))
Lot_2 <- t.test(subset(Suspension_table, Manufacturing_Lot == 'Lot2')$PSI, mu=(1500))
Lot_3 <- t.test(subset(Suspension_table, Manufacturing_Lot == 'Lot3')$PSI, mu=(1500))

Lot_1
Lot_2
Lot_3



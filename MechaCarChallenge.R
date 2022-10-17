
#Use the library() function to load the dplyr package
install.packages("tidyverse")
install.packages("jsonlite")
library(jsonlite)
library(tidyverse)

#import and read in the MechaCar_mpg.csv file as a dataframe
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function, with all six variables and Dataframe created in previous satep

#model$coefficients['(Intercept)'] #determine y-axis values from linear model


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df) #generate multiple linear regression model


#Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df)) #generate summary statistics


#DEV 2
#Import and read in the Syuspension_coil.csv
coildf <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#write and RScript that creates a total_summaary dataframee using the summarize() function
total_summary <- coildf %>% summarize(Mean_=mean(PSI),Median_=median(PSI),Var_=var(PSI),StdDev_=sd(PSI), .groups = 'keep') #create summary table


#Write a RScript that creates a lot_summary dataframe using the gruop_by and summarize functions
lot_summary <- coildf %>% group_by(Manufacturing_Lot) %>% summarize(Mean_=mean(PSI),Median_=median(PSI),Var_=var(PSI),StdDev_=sd(PSI), .groups = 'keep') #create summary table



##Dev 3
#Use t-test functoin to determine if the PSI is statistically different from pop mean of 1.5k pounds per square inch
t.test(coildf$PSI,mu=1500)



#write 3 more RS using the t.test function and its subset argumento to determine if the PSI for each manufacturing lot is statistically different from the pop mean oaf 1.5k pounds per inch
t.test(subset(coildf, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(coildf, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(coildf, Manufacturing_Lot=="Lot3")$PSI,mu=1500)




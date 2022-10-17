# MechaCar_Statistical_Analysis
## Purpose of the analysis
We want to understand the newest prototype called MechaCar, which is suffering from production troubles, so we are going to review the production data and share our findings about it.

## Linear Regression to Predict MPG
Using a multiple linear regression process, we can answer the first question: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
![D1](https://user-images.githubusercontent.com/108499271/196091867-70dc4015-0ae1-4f92-b094-97a00777baab.png)
as seen, the vehicle_lenght, ground_clearance and intercept provide a non random amount of variance.

## Is the slope of the linear model considered to be zero? Why or why not?
In the image above we can see the p-value equals 5.35e-11 which is very close to zero, or, in another words, it is much smaller than the most common significance level of .05. Under that understanding, we have enough evidence to reject the Null hypotesis and assume that the slope is not zero.

## Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
We got a Multiple R-Squared value of .7149, which is very good to say that this model can predict over 70% of the prototypes.


## The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![D2](https://user-images.githubusercontent.com/108499271/196094857-010b5c30-a203-47e2-a5cc-d493cd0f4e12.png)

According to the image, Lots 1 and 2 are showing variance under 100 pounds per square inch. However the problem remains in Lot 3 with a variance of 170. This Lot is increasing the total variance and putting the whole operation on risk.


## T-Tests on Suspension Coils
![d3](https://user-images.githubusercontent.com/108499271/196096652-49f08aac-d2b3-48be-8550-6380f1f34279.png)

the T-Tests are showing higher P-values that the significance level, for Lots 1 and 2, which means that we cannot reject the null hyphotesis, in the other hand we have the lot 3 with a p-value of .04 which will give us enough reason to reject the null hypothesis, however, as shown in previous analysis, the lot 3 process has to be studied, reviewed and fixed. 



## Study Design: MechaCar vs Competition.
we have used the t-test, linear regresion along with the stadistical summary to validate the behaviour of our different operations and dig deeper in the main problem we are having. 
We have a data base with the detail of each one of the lots and we can use it to determine the vehicles made in each one of them and the PSI, furthermore, we can determine our hyphotesys:

Ho: production is having troubles due to difficult specifications of the car

Ha: production is not having due to difficult specifications of the car.


We have to now all the information possible about this prototype in order to find the right reason of this issue, everything would be helpful and the more we know about it, the more solutions we can provide through statistics.


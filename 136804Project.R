

######Issue 1. Descriptive Statistics ----
###Download sample datasets ----
require("readr")
library(readr)

###Load the Dataset
library(readr)
housing <- read_csv("data/housing.csv")   

dim(housing)
dim(housing)

##Step 1: Measure of Frequency---
housing_freq <- housing$households
cbind(frequency = table(housing_freq),
      percentage = prop.table(table(housing_freq)) * 100)


##Step 2:Measures of Central Tendency ----
### Calculate the mode ----
housing_chas_mode <- names(table(housing$households))[
  which(table(housing$households) == max(table(housing$households)))
]
print(housing_chas_mode)

##Step 3:Measure the distribution of the data for each variable ----
summary(housing)

## Measures of Relationship ----
#Measure the covariance between variables ----
# Note that the covariance and the correlation are computed for numeric values
# only, not categorical values.
boston_housing_cov <- cov(housing[, -9])
View(housing_cov)

## Measures of Distribution/Dispersion/Spread/Scatter/Variability ----

### Measure the distribution of the data for each variable ----
summary(housing)


###. Measure the standard deviation of each variable ----
# a string data type.

sapply(housing[, -9], sd)

###Measure the variance of each variable ----
sapply(housing[, -9], var)

## Measures of Relationship ----

###Measure the covariance between variables ----
# Note that the covariance and the correlation are computed for numeric values
# only, not categorical values.
str(housing)
housing_cov <- cov(housing[, -9])
View(housing_cov)




###Issue 2. Inferential Statistics
## STEP 16. Perform ANOVA on the “California Housing” dataset ----

# Dependent variable:	 median_house_value
# Independent variables: median_income, households,total_rooms

##A One-way ANOVA
housing_one_way_anova <- aov(median_house_value ~ total_rooms, data = housing)
summary(housing_one_way_anova)

##A two-way ANOVA
# can then be used to confirm this. Execute the following for a two-way ANOVA
# (two independent variables):

housing_additive_two_way_anova <- aov(median_house_value ~ total_rooms + median_income, # nolint
                                           data = housing)
summary(housing_additive_two_way_anova)

housing_interactive_two_way_anova <- aov(median_house_value ~ total_rooms * median_income, # nolint
                                              data = housing)
summary(housing_interactive_two_way_anova)



###Issue 3. BAsic Visualization
### Univariate Plots






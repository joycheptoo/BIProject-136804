

######1. Descriptive Statistics ----
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

## STEP 14. Measure the covariance between variables ----
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

###2. Inferential Statistics





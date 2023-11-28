Business Intelligence Project
================
<Specify your name here>
<Specify the date when you submitted the lab>

- [Student Details](#student-details)
- [Setup Chunk](#setup-chunk)

# Student Details

|                                              |           |
|----------------------------------------------|-----------|
| **Student ID Number**                        | 136804    |
| **Student Name**                             | Joy Mutai |
| **BBIT 4.2 Group**                           | C         |
| **BI Project Group Name/ID (if applicable)** | …         |

# Setup Chunk

``` r
#Saving the Model
# *****************************************************************************
# Lab 11: Saving the Model ----

# STEP 1. Install and Load the Required Packages ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: caret

    ## Warning: package 'caret' was built under R version 4.3.2

    ## Loading required package: ggplot2

    ## Loading required package: lattice

``` r
if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: plumber

    ## Warning: package 'plumber' was built under R version 4.3.2

``` r
# STEP 2. Load the Dataset ----
# Load your housing dataset here, assuming you've loaded it into a variable named 'housing'.
# Replace the path with the actual path to your housing dataset CSV file.
housing <- read.csv("data/housing.csv")

# STEP 3. Train the Model ----
# Assuming 'median_house_value' is your target variable

any_missing <- any(is.na(housing))
median_house_value_missing <- sum(is.na(housing$median_house_value))

housing <- na.omit(housing)

# Impute missing values with median for numeric columns
numeric_columns <- sapply(housing, is.numeric)
housing[, numeric_columns] <- lapply(housing[, numeric_columns], function(x) ifelse(is.na(x), median(x, na.rm = TRUE), x))

train_control <- trainControl(method = "cv", number = 10)
housing_model_lm <- train(median_house_value ~ ., data = housing, method = "lm", trControl = train_control)

# View the summary of the linear regression model
summary(housing_model_lm)
```

    ## 
    ## Call:
    ## lm(formula = .outcome ~ ., data = dat)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -556980  -42683  -10497   28765  779052 
    ## 
    ## Coefficients:
    ##                               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                 -2.270e+06  8.801e+04 -25.791  < 2e-16 ***
    ## longitude                   -2.681e+04  1.020e+03 -26.296  < 2e-16 ***
    ## latitude                    -2.548e+04  1.005e+03 -25.363  < 2e-16 ***
    ## housing_median_age           1.073e+03  4.389e+01  24.439  < 2e-16 ***
    ## total_rooms                 -6.193e+00  7.915e-01  -7.825 5.32e-15 ***
    ## total_bedrooms               1.006e+02  6.869e+00  14.640  < 2e-16 ***
    ## population                  -3.797e+01  1.076e+00 -35.282  < 2e-16 ***
    ## households                   4.962e+01  7.451e+00   6.659 2.83e-11 ***
    ## median_income                3.926e+04  3.380e+02 116.151  < 2e-16 ***
    ## ocean_proximityINLAND       -3.928e+04  1.744e+03 -22.522  < 2e-16 ***
    ## ocean_proximityISLAND        1.529e+05  3.074e+04   4.974 6.62e-07 ***
    ## `ocean_proximityNEAR BAY`   -3.954e+03  1.913e+03  -2.067  0.03879 *  
    ## `ocean_proximityNEAR OCEAN`  4.278e+03  1.570e+03   2.726  0.00642 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 68660 on 20420 degrees of freedom
    ## Multiple R-squared:  0.6465, Adjusted R-squared:  0.6463 
    ## F-statistic:  3112 on 12 and 20420 DF,  p-value: < 2.2e-16

\#Step 4 and 5:

``` r
set.seed(9)
train_index_cv <- createDataPartition(housing$median_house_value, p = 0.75, list = FALSE)
housing_train_cv <- housing[train_index_cv, ]
housing_test_cv <- housing[-train_index_cv, ]

# Linear Regression Model with 10-fold cross-validation
train_control_cv <- trainControl(method = "cv", number = 10)
housing_model_lm_cv <- caret::train(median_house_value ~ .,
                                    data = housing_train_cv,
                                    trControl = train_control_cv,
                                    na.action = na.omit,
                                    method = "lm",
                                    metric = "RMSE")

# Generate predictions on the testing dataset
predictions <- predict(housing_model_lm_cv, newdata = housing_test_cv)

# Now, convert predictions to a factor
predictions_with_loaded_model <- as.factor(predictions)
```

\#Step5 :

``` r
# STEP 5. Save and Load your Model ----
# Save and Load your Model
saveRDS(housing_model_lm_cv, "./models/saved_housing_model_lm.rds")

loaded_housing_model_lm <- readRDS("./models/saved_housing_model_lm.rds")
print(loaded_housing_model_lm)
```

    ## Linear Regression 
    ## 
    ## 15327 samples
    ##     9 predictor
    ## 
    ## No pre-processing
    ## Resampling: Cross-Validated (10 fold) 
    ## Summary of sample sizes: 13794, 13794, 13794, 13793, 13794, 13795, ... 
    ## Resampling results:
    ## 
    ##   RMSE      Rsquared   MAE     
    ##   69117.61  0.6452115  49955.17
    ## 
    ## Tuning parameter 'intercept' was held constant at a value of TRUE

``` r
# Factorize predictions
predictions_with_loaded_model <- factor(predictions_with_loaded_model, levels = levels(housing_test_cv$median_house_value))

# Check levels
print(levels(predictions_with_loaded_model))
```

    ## character(0)

``` r
print(levels(housing_test_cv$median_house_value))
```

    ## NULL

``` r
#Step 6, 7 and 8:
```

``` r
# STEP 6. Creating Functions in R ----

name_of_function <- function(arg) {
  # Do something with the argument called `arg`
}

to_be_predicted <- data.frame(
  longitude = -122.0,
  latitude = 38.0,
  housing_median_age = 30,
  total_rooms = 1000,
  total_bedrooms = 200,
  population = 500,
  households = 180,
  median_income = 5.0,
  ocean_proximity = "INLAND",
  median_house_value = NA
)

predict(loaded_housing_model_lm, newdata = to_be_predicted)
```

    ##      1 
    ## 225917

``` r
# STEP 8. Make predictions using the model through a function ----
predict_housing <-
  function(arg_longitude, arg_latitude, arg_housing_median_age,
           arg_total_rooms, arg_total_bedrooms, arg_population,
           arg_households, arg_median_income, arg_ocean_proximity) {
    to_be_predicted <-
      data.frame(
        longitude = arg_longitude,
        latitude = arg_latitude,
        housing_median_age = arg_housing_median_age,
        total_rooms = arg_total_rooms,
        total_bedrooms = arg_total_bedrooms,
        population = arg_population,
        households = arg_households,
        median_income = arg_median_income,
        ocean_proximity = arg_ocean_proximity,
        median_house_value = NA
      )
    
    predict(loaded_housing_model_lm, newdata = to_be_predicted)
  }

predict_housing(
  arg_longitude = -122.25,
  arg_latitude = 37.8,
  arg_housing_median_age = 35,
  arg_total_rooms = 1500,
  arg_total_bedrooms = 300,
  arg_population = 800,
  arg_households = 280,
  arg_median_income = 4.5,
  arg_ocean_proximity = "NEAR BAY"
)
```

    ##        1 
    ## 259419.7

``` r
predict_housing(
  arg_longitude = -122.23,
  arg_latitude = 37.88,
  arg_housing_median_age = 41,
  arg_total_rooms = 880,
  arg_total_bedrooms = 129,
  arg_population = 322,
  arg_households = 126,
  arg_median_income = 8.3252,
  arg_ocean_proximity = "NEAR BAY"
)
```

    ##        1 
    ## 412392.8

\`\`\`

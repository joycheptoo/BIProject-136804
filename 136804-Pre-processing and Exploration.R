#####Data Imputation
.libPaths()

lapply(.libPaths(), list.files)

####Step1: Installing necessary packages

if (!is.element("languageserver", installed.packages()[, 1])) {
  install.packages("languageserver", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("languageserver")

# This requires the "NHANES" package available in R

if (!is.element("NHANES", installed.packages()[, 1])) {
  install.packages("NHANES", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("NHANES")

## dplyr ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("dplyr")

## naniar ----
# Documentation:
#   https://cran.r-project.org/package=naniar or
#   https://www.rdocumentation.org/packages/naniar/versions/1.0.0
if (!is.element("naniar", installed.packages()[, 1])) {
  install.packages("naniar", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("naniar")

## ggplot2 ----
# We require the "ggplot2" package to create more appealing visualizations
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggplot2")

## MICE ----
# We use the MICE package to perform data imputation
if (!is.element("mice", installed.packages()[, 1])) {
  install.packages("mice", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("mice")

## Amelia ----
if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("Amelia")

library(dplyr)

# STEP 2. Create a subset of the variables/features
housing_subset_features <- housing %>%
  select(longitude, latitude, housing_median_age, total_rooms, total_bedrooms,
         population, households, median_income, ocean_proximity, median_house_value)

# Subset of rows
# We then select 500 random observations to be included in the dataset
rand_ind <- sample(seq_len(nrow(housing_subset_features)), 500)
housing_subset_rows <- housing_subset_features[rand_ind, ]

# Assuming 'housing' is your dataset
# Replace the variable names accordingly

# Load necessary libraries
library(naniar)  

# STEP 3. Confirm the "missingness" in the Dataset before Imputation
# Are there missing values in the dataset?
any_na(housing)

# How many?
n_miss(housing)

# What is the percentage of missing data in the entire dataset?
prop_miss(housing)

# How many missing values does each variable have?
housing %>% is.na() %>% colSums()

# What is the number and percentage of missing values grouped by
# each variable?
miss_var_summary(housing)

# What is the number and percentage of missing values grouped by
# each observation?
miss_case_summary(housing)

# Which variables contain the most missing values?
gg_miss_var(housing)

# Where are missing values located (the shaded regions in the plot)?
vis_miss(housing) + theme(axis.text.x = element_text(angle = 80))

# Replace 'AgeDecade' and 'Depressed' with your categorical variables
# Which combinations of variables are missing together?
gg_miss_upset(housing)

# Create a heatmap of "missingness" broken down by "AgeDecade"
# First, confirm that the "AgeDecade" variable is a categorical variable
is.factor(housing$ocean_proximity)
# Second, create the visualization
gg_miss_fct(housing, fct = ocean_proximity)

# Create a heatmap of "missingness" broken down by "Depressed"
# First, confirm that the "Depressed" variable is a categorical variable
is.factor(housing$ocean_proximity)
# Second, create the visualization
gg_miss_fct(housing, fct = ocean_proximity)


###Step 4:Use the MICE package to perform data imputation ----

# Load necessary libraries
library(mice)  # Make sure to have the mice package installed

# Add a new variable 'MAP' based on the given formula
housing <- housing %>%
  mutate(MAP = total_rooms + (1 / 3) * (total_bedrooms - total_rooms))

# Identify somewhat correlated variables for imputation
somewhat_correlated_variables <- quickpred(housing, mincor = 0.3) # nolint

# Impute missing data using mice
housing_mice <- mice(housing, m = 11, method = "pmm",
                     seed = 7,
                     predictorMatrix = somewhat_correlated_variables)

# Visualize imputed data using strip plots
stripplot(housing_mice,
          MAP ~ median_income | .imp,
          pch = 20, cex = 1)

stripplot(housing_mice,
          MAP ~ population | .imp,
          pch = 20, cex = 1)

## Impute the missing data
# Create imputed data for the final dataset using the mice::complete() function
housing_imputed <- mice::complete(housing_mice, 1)

# Load necessary libraries
library(Amelia)  # Make sure to have the Amelia package installed

###### STEP 5. Confirm the "missingness" in the Imputed Dataset ----
# A textual confirmation that the dataset has no more missing values in any
# feature:
miss_var_summary(housing_imputed)

# A visual confirmation that the dataset has no more missing values in any
# feature:
missmap(housing_imputed)

#########################
# Are there missing values in the dataset?
any_na(housing_imputed)

# How many?
n_miss(housing_imputed)

# What is the percentage of missing data in the entire dataset?
prop_miss(housing_imputed)

# How many missing values does each variable have?
housing_imputed %>% is.na() %>% colSums()

# What is the number and percentage of missing values grouped by
# each variable?
miss_var_summary(housing_imputed)

# What is the number and percentage of missing values grouped by
# each observation?
miss_case_summary(housing_imputed)

# Which variables contain the most missing values?
gg_miss_var(housing_imputed)

# Where are missing values located (the shaded regions in the plot)?
vis_miss(housing_imputed) + theme(axis.text.x = element_text(angle = 80))

# Note: The following command should give you an error stating that at least 2
# variables should have missing data for the plot to be created.
# Which combinations of variables are missing together?
# gg_miss_upset(housing_imputed)

# Assuming 'housing_imputed' is your imputed dataset
# Replace the variable names accordingly

# Create a heatmap of "missingness" broken down by "ocean_proximity"
# First, confirm that the "ocean_proximity" variable is a categorical variable
is.factor(housing_imputed$ocean_proximity)
# Second, create the visualization
gg_miss_fct(housing_imputed, fct = ocean_proximity)

# Create a heatmap of "missingness" broken down by "oceanproximity"
# First, confirm that the "oceanproximity" variable is a categorical variable
is.factor(housing_imputed$ocean_proximity)
# Second, create the visualization
gg_miss_fct(housing_imputed, fct = ocean_proximity)



#####Data Transformation
.libPaths()

lapply(.libPaths(), list.files)

if (require("languageserver")) {
  require("languageserver")
} else {
  install.packages("languageserver", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

###Step 1: Install Install and Load the Required Packages ----
if (require("mlbench")) {
  require("mlbench")
} else {
  install.packages("mlbench", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## readr ----
if (require("readr")) {
  require("readr")
} else {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## e1071 ----
if (require("e1071")) {
  require("e1071")
} else {
  install.packages("e1071", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## factoextra ----
if (require("factoextra")) {
  require("factoextra")
} else {
  install.packages("factoextra", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## FactoMineR ----
if (require("FactoMineR")) {
  require("FactoMineR")
} else {
  install.packages("FactoMineR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## STEP 2. Load the Datasets ----
housing <- read_csv("data/housing.csv", col_types = cols(longitude = col_double(), 
                                                         latitude = col_double(), housing_median_age = col_number(), 
                                                         total_rooms = col_number(), total_bedrooms = col_number(), 
                                                         population = col_number(), households = col_number(), 
                                                         median_income = col_number(), ocean_proximity = col_character(), 
                                                         median_house_value = col_number()))

###Step 3: Scale Data Transform ----
### The Scale Basic Transform on the Boston Housing Dataset ----
# BEFORE

summary(housing)
# Histograms for selected columns in the housing dataset
hist(housing$longitude, main = "Longitude")
hist(housing$latitude, main = "Latitude")
hist(housing$housing_median_age, main = "Housing Median Age")
hist(housing$total_rooms, main = "Total Rooms")
hist(housing$total_bedrooms, main = "Total Bedrooms")
hist(housing$population, main = "Population")
hist(housing$households, main = "Households")
hist(housing$median_income, main = "Median Income")
hist(housing$median_house_value, main = "Median House Value")

# Install and load the caret package
install.packages("caret")
library(caret)

# Create a model for data transformation
model_of_the_transform <- preProcess(housing, method = c("scale"))
print(model_of_the_transform)

# Apply the transformation to the housing dataset
housing_scale_transform <- predict(model_of_the_transform, housing)

##AFTER
# Summary of the scaled and transformed housing dataset
summary(housing_scale_transform)
# Histograms for selected columns in the scaled and transformed housing dataset
hist(housing_scale_transform$longitude, main = "Longitude")
hist(housing_scale_transform$latitude, main = "Latitude")
hist(housing_scale_transform$housing_median_age, main = "Housing Median Age")
hist(housing_scale_transform$total_rooms, main = "Total Rooms")
hist(housing_scale_transform$total_bedrooms, main = "Total Bedrooms")
hist(housing_scale_transform$population, main = "Population")
hist(housing_scale_transform$households, main = "Households")
hist(housing_scale_transform$median_income, main = "Median Income")
hist(housing_scale_transform$median_house_value, main = "Median House Value")


####Center Data Transform ----
## STEP 4. Apply a Centre Data Transform ----
### The Centre Basic Transform on the Housing Dataset ----
# BEFORE
summary(housing)
boxplot(housing$longitude, main = "Longitude")
boxplot(housing$latitude, main = "Latitude")
boxplot(housing$housing_median_age, main = "Housing Median Age")
boxplot(housing$total_rooms, main = "Total Rooms")
boxplot(housing$total_bedrooms, main = "Total Bedrooms")
boxplot(housing$population, main = "Population")
boxplot(housing$households, main = "Households")
boxplot(housing$median_income, main = "Median Income")
boxplot(housing$median_house_value, main = "Median House Value")

model_of_the_transform <- preProcess(housing, method = c("center"))
print(model_of_the_transform)
housing_center_transform <- predict(model_of_the_transform, housing)

# AFTER
summary(housing_center_transform)
boxplot(housing_center_transform$longitude, main = "Longitude")
boxplot(housing_center_transform$latitude, main = "Latitude")
boxplot(housing_center_transform$housing_median_age, main = "Housing Median Age")
boxplot(housing_center_transform$total_rooms, main = "Total Rooms")
boxplot(housing_center_transform$total_bedrooms, main = "Total Bedrooms")
boxplot(housing_center_transform$population, main = "Population")
boxplot(housing_center_transform$households, main = "Households")
boxplot(housing_center_transform$median_income, main = "Median Income")
boxplot(housing_center_transform$median_house_value, main = "Median House Value")

####Standardize Basic Transform ----
## STEP 5. Apply a Standardize Basic Transform ----
### The Standardize Basic Transform on the Housing Dataset ----
# BEFORE
summary(housing)
sapply(housing[, -9], sd)  # Assuming you want to exclude the ocean_proximity column

model_of_the_transform <- preProcess(housing,
                                     method = c("scale", "center"))
print(model_of_the_transform)
housing_standardize_transform <- predict(model_of_the_transform,
                                         housing)

# AFTER
summary(housing_standardize_transform)
sapply(housing_standardize_transform[, -9], sd)  # Adjust the column index as needed

##### Normalize Data Transform ----

## STEP 6. Apply a Normalize Data Transform ----
### The Normalize Transform on the Housing Dataset ----
summary(housing)
model_of_the_transform <- preProcess(housing, method = c("range"))
print(model_of_the_transform)
housing_normalize_transform <- predict(model_of_the_transform,
                                       housing)
summary(housing_normalize_transform)

# Box-Cox Power Transform ----

## STEP 7. Apply a Box-Cox Power Transform ----
### Box-Cox Power Transform on the Housing Dataset ----
# Summary of the housing dataset after the Standardize Basic Transform
summary(housing_standardize_transform)

# Calculate the skewness before the Box-Cox transform for a specific column (adjust column index as needed)
sapply(housing_standardize_transform[, 4], skewness, type = 2)
sapply(housing_standardize_transform[, 4], sd)

# Apply Box-Cox Power Transform
model_of_the_transform <- preProcess(housing_standardize_transform, method = c("BoxCox"))
print(model_of_the_transform)
housing_box_cox_transform <- predict(model_of_the_transform, housing_standardize_transform)

# Summary of the housing dataset after the Box-Cox Power Transform
summary(housing_box_cox_transform)

# Calculate the skewness and standard deviation after the Box-Cox transform for a specific column (adjust column index as needed)
sapply(housing_box_cox_transform[, 4], skewness, type = 2)
sapply(housing_box_cox_transform[, 4], sd)


######### STEP 8. Apply a Yeo-Johnson Power Transform ----
####Yeo-Johnson Power Transform on the Housing Dataset ----
# BEFORE
summary(housing_standardize_transform)

# Calculate the skewness before the Yeo-Johnson transform for a specific column (adjust column index as needed)
sapply(housing_standardize_transform[, 4], skewness, type = 2)
sapply(housing_standardize_transform[, 4], sd)

model_of_the_transform <- preProcess(housing_standardize_transform,
                                     method = c("YeoJohnson"))
print(model_of_the_transform)
housing_yeo_johnson_transform <- predict(model_of_the_transform, housing_standardize_transform)

# AFTER
summary(housing_yeo_johnson_transform)

# Calculate the skewness and standard deviation after the Yeo-Johnson transform for a specific column (adjust column index as needed)
sapply(housing_yeo_johnson_transform[, 4], skewness, type = 2)
sapply(housing_yeo_johnson_transform[, 4], sd)


# Principal Component Analysis (PCA) Linear Algebra Transform ----
### PCA for Dimensionality Reduction on the Housing Dataset ----
# The initial numeric variables are reduced to principal components
summary(housing)

model_of_the_transform <- preProcess(housing,
                                     method = c("scale", "center", "pca"))
print(model_of_the_transform)
housing_pca_dr <- predict(model_of_the_transform, housing)

summary(housing_pca_dr)
dim(housing_pca_dr)


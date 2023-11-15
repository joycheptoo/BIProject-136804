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


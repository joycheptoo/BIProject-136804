#########Training the Model,
.libPaths()

lapply(.libPaths(), list.files)

if (require("languageserver")) {
  require("languageserver")
} else {
  install.packages("languageserver", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}


# STEP 1. Install and Load the Required Packages ----
## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## klaR ----
if (require("klaR")) {
  require("klaR")
} else {
  install.packages("klaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## e1071 ----
if (require("e1071")) {
  require("e1071")
} else {
  install.packages("e1071", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## readr ----
if (require("readr")) {
  require("readr")
} else {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## LiblineaR ----
if (require("LiblineaR")) {
  require("LiblineaR")
} else {
  install.packages("LiblineaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## naivebayes ----
if (require("naivebayes")) {
  require("naivebayes")
} else {
  install.packages("naivebayes", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

#Step 2:BOOTSTRAPPING: Calfornia Housing Dataset ----
housing <- read_csv("data/housing.csv", col_types = cols(longitude = col_double(), 
                                                         latitude = col_double(), housing_median_age = col_number(), 
                                                         total_rooms = col_number(), total_bedrooms = col_number(), 
                                                         population = col_number(), households = col_number(), 
                                                         median_income = col_number(), ocean_proximity = col_character(), 
                                                         median_house_value = col_number()))


summary(housing)
str(housing)

## 1a. Split the dataset ====
# Define a 75:25 train:test data split of the dataset.
# That is, 75% of the original data will be used to train the model and
# 25% of the original data will be used to test the model.

install.packages("caret")
library(caret)

# Set the seed for reproducibility
set.seed(42)

train_index <- createDataPartition(housing$median_house_value,
                                   p = 0.75,
                                   list = FALSE)
housing_train <- housing[train_index, ]
housing_test <- housing[-train_index, ]

### 1b. Bootstrapping train control ----
# Replace column names as needed
housing_model_lm <- caret::train(median_house_value ~ longitude + latitude + housing_median_age +
                                   total_rooms + total_bedrooms + population + households +
                                   median_income + ocean_proximity,
                                 data = housing_train,
                                 trControl = trainControl(method = "boot", number = 500),
                                 na.action = na.omit, method = "lm", metric = "RMSE")

## 3. Test the trained linear regression model using the testing dataset ----
# Make predictions on the testing dataset
predictions_lm <- predict(housing_model_lm, newdata = housing_test)

## 4. View the RMSE and the predicted values for the 12 observations ----
# Print the RMSE and predicted values
print(housing_model_lm)
print(predictions_lm)

#### ## 5. Use the model to make a prediction on unseen new data ----
new_data <- data.frame(longitude = -122.3,  
                       latitude = 37.5,     
                       housing_median_age = 30,  
                       total_rooms = 2000,  
                       total_bedrooms = 400,  
                       population = 1000,  
                       households = 350,  
                       median_income = 5.0,  
                       ocean_proximity = "NEAR BAY" ,
                       check.names = FALSE)

# The variables that are factors (categorical) in the training dataset must
# also be defined as factors in the new data
new_data$ocean_proximity <- as.factor(new_data$ocean_proximity)

# Use the model to predict the output based on the unseen new data
predictions_lm_new_data <- predict(housing_model_lm, new_data)

# Print the predictions for the dependent variable
print(predictions_lm_new_data)


####Step 3:(CV, REPEATED CV, AND LOOCV)
# Load the housing dataset using base R read.csv function
housing <- read.csv("data/housing.csv", header = TRUE)

# Split the dataset
train_index <- createDataPartition(housing$median_house_value, p = 0.75, list = FALSE)
housing_train <- housing[train_index, ]
housing_test <- housing[-train_index, ]

# Linear Regression Model
train_control <- trainControl(method = "cv", number = 10)

housing_model_lm <- caret::train(median_house_value ~ .,
                                 data = housing_train,
                                 trControl = train_control,
                                 na.action = na.omit,
                                 method = "lm",
                                 metric = "RMSE")

# Test the trained model using the testing dataset
predictions_lm <- predict(housing_model_lm, newdata = housing_test)

# View the RMSE and the predicted values
print(housing_model_lm)
print(predictions_lm)

######### Step 5:Model performance comparison using resampling(for classification and regression)
# Load necessary libraries
install.packages(c("caret", "boot", "MASS", "readr"))
library(caret)
library(boot)
library(MASS)
library(readr)

# Load the housing dataset
housing <- read_csv("data/housing.csv", 
                    col_types = cols(longitude = col_double(), 
                                     latitude = col_double(), 
                                     housing_median_age = col_number(), 
                                     total_rooms = col_number(), 
                                     total_bedrooms = col_number(), 
                                     population = col_number(), 
                                     households = col_number(), 
                                     median_income = col_number(), 
                                     ocean_proximity = col_character(), 
                                     median_house_value = col_number()))

# Create train/test split
train_index <- createDataPartition(housing$median_house_value, p = 0.75, list = FALSE)
housing_train <- housing[train_index, ]
housing_test <- housing[-train_index, ]

# Linear Regression Model with Bootstrapping
housing_model_lm_bootstrap <- caret::train(median_house_value ~ longitude + latitude + housing_median_age +
                                             total_rooms + total_bedrooms + population + households +
                                             median_income + ocean_proximity,
                                           data = housing_train,
                                           trControl = trainControl(method = "boot", number = 500),
                                           na.action = na.omit, method = "lm", metric = "RMSE")

# Test the trained linear regression model using the testing dataset
predictions_lm_bootstrap <- predict(housing_model_lm_bootstrap, newdata = housing_test)

# View the RMSE and the predicted values
print(housing_model_lm_bootstrap)
print(predictions_lm_bootstrap)

# Use the model to make a prediction on unseen new data
new_data <- data.frame(longitude = -122.3,  
                       latitude = 37.5,     
                       housing_median_age = 30,  
                       total_rooms = 2000,  
                       total_bedrooms = 400,  
                       population = 1000,  
                       households = 350,  
                       median_income = 5.0,  
                       ocean_proximity = "NEAR BAY",
                       check.names = FALSE)

# The variables that are factors (categorical) in the training dataset must
# also be defined as factors in the new data
new_data$ocean_proximity <- as.factor(new_data$ocean_proximity)

# Use the model to predict the output based on the unseen new data
predictions_lm_new_data_bootstrap <- predict(housing_model_lm_bootstrap, new_data)

# Print the predictions for the dependent variable
print(predictions_lm_new_data_bootstrap)

# Linear Regression Model with Cross-Validation
train_control_cv <- trainControl(method = "cv", number = 10)

housing_model_lm_cv <- caret::train(median_house_value ~ .,
                                    data = housing_train,
                                    trControl = train_control_cv,
                                    na.action = na.omit,
                                    method = "lm",
                                    metric = "RMSE")

# Test the trained model using the testing dataset
predictions_lm_cv <- predict(housing_model_lm_cv, newdata = housing_test)

# View the RMSE and the predicted values
print(housing_model_lm_cv)
print(predictions_lm_cv)



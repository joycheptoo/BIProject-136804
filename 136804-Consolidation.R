# *****************************************************************************
# Lab 11: Saving the Model ----

# STEP 1. Install and Load the Required Packages ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

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

# STEP 4. Test the Model ----
# We can test the model
# Assume you have trained your model and generated predictions
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
predictions <- as.factor(predictions)


# STEP 5. Save and Load your Model ----
saveRDS(housing_model_lm, "./models/saved_housing_model_lm.rds")

loaded_housing_model_lm <- readRDS("./models/saved_housing_model_lm.rds")
print(loaded_housing_model_lm)

# Assuming predictions_with_loaded_model is not a factor yet
predictions_with_loaded_model <- factor(predictions_with_loaded_model, levels = levels(housing[housing_testing, ]$median_house_value))

levels(predictions_with_loaded_model)
levels(housing[housing_testing, ]$median_house_value)


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





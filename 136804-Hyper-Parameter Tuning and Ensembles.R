##Step 1: Hyperparameter Tuning ----
# Load necessary libraries
if (!requireNamespace("randomForest", quietly = TRUE)) {
  install.packages("randomForest", dependencies = TRUE)
}
if (!requireNamespace("mlbench", quietly = TRUE)) {
  install.packages("mlbench", dependencies = TRUE)
}
if (!requireNamespace("caret", quietly = TRUE)) {
  install.packages("caret", dependencies = TRUE)
}
if (!requireNamespace("RRF", quietly = TRUE)) {
  install.packages("RRF", dependencies = TRUE)
}
library(randomForest)
library(mlbench)
library(caret)
library(RRF)

# Load the dataset
housing <- read.csv("data/housing.csv", header = TRUE)
summary(housing)
housing$median_house_value <- ifelse(is.na(housing$median_house_value), mean(housing$median_house_value, na.rm = TRUE), housing$median_house_value)

# STEP 3. Train the Model ----
seed <- 7
metric <- "RMSE"

train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(seed)
mtry <- floor(sqrt(ncol(housing) - 1))
tunegrid <- expand.grid(.mtry = mtry)
housing_model_default_rf <- train(median_house_value ~ ., data = housing, method = "rf",
                                  metric = metric,
                                  tuneGrid = tunegrid,
                                  trControl = train_control)
print(housing_model_default_rf)

# STEP 4. Apply a "Random Search" to identify the best parameter value ----
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3, search = "random")
set.seed(seed)
housing_model_random_search_rf <- train(median_house_value ~ ., data = housing, method = "rf",
                                        metric = metric,
                                        tuneLength = 12,
                                        trControl = train_control)
print(housing_model_random_search_rf)
plot(housing_model_random_search_rf)

# STEP 5. Apply a "Grid Search" to identify the best parameter value ----
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3, search = "grid")
set.seed(seed)

tunegrid <- expand.grid(.mtry = c(1:10),
                        .coefReg = seq(from = 0.1, to = 1, by = 0.1))

housing_model_grid_search_rrf_global <- train(median_house_value ~ ., data = housing,
                                              method = "RRFglobal",
                                              metric = metric,
                                              tuneGrid = tunegrid,
                                              trControl = train_control)
print(housing_model_grid_search_rrf_global)
plot(housing_model_grid_search_rrf_global)

# STEP 6. Apply a "Manual Search" to identify the best parameter value ----
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3, search = "random")

tunegrid <- expand.grid(.mtry = c(1:5))

modellist <- list()
for (ntree in c(500, 800, 1000)) {
  set.seed(seed)
  housing_model_manual_search_rf <- train(median_house_value ~ ., data = housing,
                                          method = "rf", metric = metric,
                                          tuneGrid = tunegrid,
                                          trControl = train_control,
                                          ntree = ntree)
  key <- toString(ntree)
  modellist[[key]] <- housing_model_manual_search_rf
}

# Lastly, we compare results to find which parameters gave the highest accuracy
print(modellist)

results <- resamples(modellist)
summary(results)
dotplot(results)


######Bagging
# STEP 1. Install and Load the Required Packages ----
## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## caretEnsemble ----
if (require("caretEnsemble")) {
  require("caretEnsemble")
} else {
  install.packages("caretEnsemble", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## C50 ----
if (require("C50")) {
  require("C50")
} else {
  install.packages("C50", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## adabag ----
if (require("adabag")) {
  require("adabag")
} else {
  install.packages("adabag", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

# STEP 2. Load the Dataset ----
# Load your housing dataset here, assuming you've loaded it into a variable named 'housing'.
# Replace the path with the actual path to your housing dataset CSV file.
housing <- read.csv("data/housing.csv")

# Example of Bagging algorithms
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
seed <- 7
metric <- "Accuracy"

## 2.a. Bagged CART ----
set.seed(seed)
housing_model_bagged_cart <- train(median_house_value ~ ., data = housing, method = "treebag",
                                   metric = metric,
                                   trControl = train_control)

## 2.b. Random Forest ----
set.seed(seed)
housing_model_rf <- train(median_house_value ~ ., data = housing, method = "rf",
                          metric = metric, trControl = train_control)

# Summarize results
bagging_results <-
  resamples(list("Bagged Decision Tree" = housing_model_bagged_cart,
                 "Random Forest" = housing_model_rf))

summary(bagging_results)
dotplot(bagging_results)


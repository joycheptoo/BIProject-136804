---
title: "Business Intelligence Project"
author: "<Specify your name here>"
date: "<Specify the date when you submitted the lab>"
output:
  github_document: 
    toc: yes
    toc_depth: 4
    fig_width: 6
    fig_height: 4
    df_print: default
editor_options:
  chunk_output_type: console
---

# Student Details

|                                              |           |
|----------------------------------------------|-----------|
| **Student ID Number**                        | 136804    |
| **Student Name**                             | Joy Mutai |
| **BBIT 4.2 Group**                           | C         |
| **BI Project Group Name/ID (if applicable)** | ...       |

# Setup Chunk
# Step 1: 
```{r}
##Step 1: Hyperparameter Tuning ----
# Load necessary libraries
# Load necessary libraries
libraries <- c("randomForest", "mlbench", "caret", "RRF")
for (package in libraries) {
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package, dependencies = TRUE)
  }
  library(package, character.only = TRUE)
}

```

# Step 2:
```{r}
# Load the dataset
housing <- read.csv("data/housing.csv", header = TRUE)

# Handle missing values
housing$median_house_value <- ifelse(is.na(housing$median_house_value), mean(housing$median_house_value, na.rm = TRUE), housing$median_house_value)


```
# Step 3 
```{r}
# STEP 3. Train the Model ----
seed <- 7
metric <- "RMSE"

# Handle missing values
housing <- na.omit(housing)

# Check for missing values
any_missing <- any(is.na(housing))
print(any_missing)

train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(seed)
mtry <- floor(sqrt(ncol(housing) - 1))
tunegrid <- expand.grid(.mtry = mtry)
housing_model_default_rf <- train(
  median_house_value ~ ., data = housing, method = "rf",
  metric = metric,
  tuneGrid = tunegrid,
  trControl = train_control
)
print(housing_model_default_rf)

```
# Step 4:
```{r}
# Combine random search into a single grid search
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3, search = "grid")
set.seed(seed)

tunegrid <- expand.grid(.mtry = c(1:10),
                        .coefReg = seq(from = 0.1, to = 1, by = 0.1))

housing_model_grid_search_rf <- train(
  median_house_value ~ ., data = housing, method = "rf",
  metric = metric, tuneGrid = tunegrid, trControl = train_control
)
print(housing_model_grid_search_rf)
plot(housing_model_grid_search_rf)

```

# step 5
```{r}
# Summarize results for bagging models
bagging_results <- resamples(
  list(
    "Bagged Decision Tree" = housing_model_bagged_cart,
    "Random Forest" = housing_model_rf
  )
)
summary(bagging_results)
dotplot(bagging_results)
```




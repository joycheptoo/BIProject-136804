

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
.libPaths()
lapply(.libPaths(), list.files)
if (!is.element("languageserver", installed.packages()[, 1])) {
  install.packages("languageserver", dependencies = TRUE)
}
require("languageserver")


# STEP 1. Install and Load the Required Packages ----
# The following packages can be installed and loaded before proceeding to the
# subsequent steps.

## dplyr - For data manipulation ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE)
}
require("dplyr")

## ggplot2 - For data visualizations using the Grammar for Graphics package ----
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE)
}
require("ggplot2")

## ggrepel - Additional options for the Grammar for Graphics package ----
if (!is.element("ggrepel", installed.packages()[, 1])) {
  install.packages("ggrepel", dependencies = TRUE)
}
require("ggrepel")

## ggraph - Additional options for the Grammar for Graphics package ----
if (!is.element("ggraph", installed.packages()[, 1])) {
  install.packages("ggraph", dependencies = TRUE)
}
require("ggraph")

## tidytext - For text mining ----
if (!is.element("tidytext", installed.packages()[, 1])) {
  install.packages("tidytext", dependencies = TRUE)
}
require("tidytext")

## tidyr - To tidy messy data ----
if (!is.element("tidyr", installed.packages()[, 1])) {
  install.packages("tidyr", dependencies = TRUE)
}
require("tidyr")

## widyr - To widen, process, and re-tidy a dataset ----
if (!is.element("widyr", installed.packages()[, 1])) {
  install.packages("widyr", dependencies = TRUE)
}
require("widyr")

## gridExtra - to arrange multiple grid-based plots on a page ----
if (!is.element("gridExtra", installed.packages()[, 1])) {
  install.packages("gridExtra", dependencies = TRUE)
}
require("gridExtra")

## knitr - for dynamic report generation ----
if (!is.element("knitr", installed.packages()[, 1])) {
  install.packages("knitr", dependencies = TRUE)
}
require("knitr")

## kableExtra - for nicely formatted output tables ----
if (!is.element("kableExtra", installed.packages()[, 1])) {
  install.packages("kableExtra", dependencies = TRUE)
}
require("kableExtra")

## formattable -  To create a formattable object ----
# A formattable object is an object to which a formatting function and related
# attributes are attached.
if (!is.element("formattable", installed.packages()[, 1])) {
  install.packages("formattable", dependencies = TRUE)
}
require("formattable")

## circlize - To create a cord diagram or visualization ----
# by Gu et al. (2014)
if (!is.element("circlize", installed.packages()[, 1])) {
  install.packages("circlize", dependencies = TRUE)
}
require("circlize")

if (!is.element("memery", installed.packages()[, 1])) {
  install.packages("memery", dependencies = TRUE)
}
require("memery")

## magick - For image processing in R ----
if (!is.element("magick", installed.packages()[, 1])) {
  install.packages("magick", dependencies = TRUE)
}
require("magick")

## yarrr - To create a pirate plot ----
if (!is.element("yarrr", installed.packages()[, 1])) {
  install.packages("yarrr", dependencies = TRUE)
}
require("yarrr")

## radarchart - To create interactive radar charts using ChartJS ----
if (!is.element("radarchart", installed.packages()[, 1])) {
  install.packages("radarchart", dependencies = TRUE)
}
require("radarchart")

## igraph - To create ngram network diagrams ----
if (!is.element("igraph", installed.packages()[, 1])) {
  install.packages("igraph", dependencies = TRUE)
}
require("igraph")

## wordcloud2 - For creating wordcloud by using 'wordcloud2.JS ----
if (!is.element("wordcloud2", installed.packages()[, 1])) {
  install.packages("wordcloud2", dependencies = TRUE)
}
require("wordcloud2")

## textdata - Download sentiment lexicons and labeled text data sets ----
if (!is.element("textdata", installed.packages()[, 1])) {
  install.packages("textdata", dependencies = TRUE)
}
require("textdata")

## readr - Load datasets from CSV files ----
if (!is.element("readr", installed.packages()[, 1])) {
  install.packages("readr", dependencies = TRUE)
}
require("readr")

## stringr - For processing characters in a string ----
if (!is.element("stringr", installed.packages()[, 1])) {
  install.packages("stringr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("stringr")

# STEP 2. Load the Dataset
library(readr)
housing <- read_csv("data/housing.csv", col_types = cols(longitude = col_double(), 
                                                         latitude = col_double(), housing_median_age = col_number(), 
                                                         total_rooms = col_number(), total_bedrooms = col_number(), 
                                                         population = col_number(), households = col_number(), 
                                                         median_income = col_number(), ocean_proximity = col_character(), 
                                                         median_house_value = col_number()))
View(housing)
###Create Univariate plots
#1. Create a histogram
# Create a histogram using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(x = median_income)) +
  geom_histogram(binwidth = 1, fill = "#536CB5", color = "#304FAF") +
  labs(title = "Histogram of Median Income",
       x = "Median Income",
       y = "Frequency") +
  theme_minimal()


 ##2. Create a bar plot using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(x = ocean_proximity)) +
  geom_bar(fill = "#536CB5", color = "#304FAF") +
  labs(title = "Bar Plot of Ocean Proximity",
       x = "Ocean Proximity",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability


##3.Create a box plot using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(y = median_house_value)) +
  geom_boxplot(fill = "#536CB5", color = "#304FAF") +
  labs(title = "Box Plot of Median House Value",
       y = "Median House Value") +
  theme_minimal()


##4. Create a density plot using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(x = median_house_value)) +
  geom_density(fill = "#536CB5", color = "#304FAF") +
  labs(title = "Density Plot of Median House Value",
       x = "Median House Value") +
  theme_minimal()

########################################################################
#####Multivariate Plot
# Assuming 'median_income' and 'median_house_value' are numeric variables in your dataset
# Replace them with the actual variable names if different

##1.Create a scatter plot using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(x = median_income, y = median_house_value)) +
  geom_point(color = "#536CB5") +
  labs(title = "Scatter Plot of Median Income vs. Median House Value",
       x = "Median Income",
       y = "Median House Value") +
  theme_minimal()



##2. Create a pair plot using ggplot2
library(ggplot2)

# Customize the plot
ggplot(housing, aes(x = median_income, y = ..density..)) +
  geom_density() +
  facet_grid(. ~ housing_median_age) +
  labs(title = "Pair Plot of Numeric Variables",
       x = "Median Income") +
  theme_minimal()

# Load necessary libraries
library(ggplot2)
library(tidyr)
library(dplyr)  # Add this line to explicitly load the dplyr package

# Select relevant numeric variables
numeric_data <- housing %>%
  select(median_income, housing_median_age, total_rooms, total_bedrooms, population, median_house_value)

# Rest of the code remains the same...

# Compute the correlation matrix
cor_matrix <- cor(numeric_data)

# Create a heatmap using ggplot

# Load necessary libraries
library(ggplot2)
library(tidyr)

# Select relevant numeric variables
numeric_data <- housing %>%
  select(median_income, housing_median_age, total_rooms, total_bedrooms, population, median_house_value)

# Compute the correlation matrix
cor_matrix <- cor(numeric_data)

# Convert the correlation matrix to a data frame
cor_data <- as.data.frame(as.table(cor_matrix))

##3.Create a heatmap using ggplot2
ggplot(data = cor_data, aes(Var1, Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "#888A8E", high = "#536CB5") +
  labs(title = "Correlation Heatmap",
       x = "Variables",
       y = "Variables") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))








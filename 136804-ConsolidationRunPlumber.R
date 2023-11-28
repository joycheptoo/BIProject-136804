
.libPaths()

lapply(.libPaths(), list.files)

#Load Packages
if (require("languageserver")) {
  require("languageserver")
} else {
  install.packages("languageserver", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

# STEP 1. Install and load the required packages ----
## plumber ----
if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

# STEP 2. Process a Plumber API ----
# This allows us to process a plumber API
api <- plumber::plumb("136804-Consolidation.R")

# STEP 3. Run the API on a specific port ----
# Specify a constant localhost port to use
api$run(host = "127.0.0.2", port = 5027)

# STEP 4. Test the API ----
# We test the API using the following values:
# for the arguments:
# pregnant, glucose, pressure, triceps, insulin, mass, pedigree, age
# 6, 148, 72, 35, 0, 33.6, 0.627, and 50 respectively should be "positive"
# 1, 85, 66, 29, 0, 26.6, 0.351, and 31 respectively should be "negative"

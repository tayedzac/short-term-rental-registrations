#### Preamble ####
# Purpose: Simulate a data set to test requirements that should be followed.
# Author: Tayedza Chikumbirike
# Email: t.chikumbirike@mail.utoronto.ca
# Date: 29 January 2023
# Prerequisites: Cleaned the data set intended for analysis.

#### SIMULATE DATA ####
set.seed(222)

# creating a data set
simulated_data <-
  tibble(
    "ward_id" = 1:25,
    "Wards" = sample(c("York Centre", 
                       "Toronto Centre", 
                       "Davenport", 
                       "Other"),
                     size = 25,
                     replace = TRUE
    )
  )

simulated_data

#testing characteristics of table
simulated_data$Wards |>
  class() == "character"

simulated_data$ward_id |>
  class() == "integer"

simulated_data$Wards |>
  unique() |>
  length() == 4

simulated_data$ward_id |>
  min() > 0
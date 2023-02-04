#### Preamble ####
# Purpose: Clean raw data in preparation for analysis
# Author: Tayedza Chikumbirike
# Email: t.chikumbirike@mail.utoronto.ca
# Date: 29 January 2023
# Prerequisites: Need to know where to get short term rentals data.

data <- read.csv("~/short_term_rental_registrations/inputs/raw_data.csv")

#### CLEANING DATASET #####
clean_data <- clean_names(data) |>
  select(postal_code, ward_name) |>
  drop_na(ward_name)

#### REMOVING DUPLICATE TERMS ####
clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St. Paul's" = "St.Paul's"
      )
  )

clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St.Paul's" = "St.Paul's"
      )
  )

clean_data <- clean_data |>
  mutate(
    ward_name =
      recode(
        ward_name,
        "Toronto-St. Paul’s" = "St.Paul's"
      )
  )


write.csv(clean_data, "~/short_term_rental_registrations/inputs/clean_data.csv")

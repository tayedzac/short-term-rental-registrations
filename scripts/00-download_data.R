#### Preamble ####
# Purpose: Download data from OpenDataToronto
# Author: Tayedza Chikumbirike
# Email: t.chikumbirike@mail.utoronto.ca
# Date: 29 January 2023
# Prerequisites: Need to know where to get short term rentals data.

library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("2ab20f80-3599-486a-8f8a-9cb59117977c")
package

# get all resources for this package
resources <- list_package_resources("2ab20f80-3599-486a-8f8a-9cb59117977c")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

write.csv(data, "~/short_term_rental_registrations/inputs/raw_data.csv")
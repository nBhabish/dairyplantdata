## code to prepare `DATASET` dataset goes here

# library -----------------------------------------------------------------

library(tidyverse)
library(janitor)

# quick-clean up

dairy_plant_raw_data <- read_csv("data-raw/dairyPlantProject.csv")

dairy_plant_data <- dairy_plant_raw_data |> 
  janitor::clean_names() |> 
  mutate(across(everything(), .fns = ~str_to_lower(.))) |> 
  select(-1)


usethis::use_data(dairy_plant_data, overwrite = TRUE)


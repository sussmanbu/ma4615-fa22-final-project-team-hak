library(tidyverse)

nba_data <- read_csv(here::here("dataset-ignore", "2019-20_pbp.csv"))

## CLEAN the data
nba_data_clean <- nba_data

write_csv(nba_data_clean, file = here::here("dataset-ignore", "nba_data_clean.csv"))

save(nba_data_clean, file = here::here("dataset-ignore/nba_data.RData"))



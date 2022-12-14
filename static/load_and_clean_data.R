library(tidyverse)
library(readr)
library(readxl)
library(writexl)

player_data <- read_csv(here::here("dataset-ignore", "player_stats.csv"))
team_data <- read_csv(here::here("dataset-ignore", "team_stats.csv"))

# CLEAN the data
player_data_clean.csv <- na.omit(player_data) %>% filter(`3PA` > 25)
team_data_clean.csv <- na.omit(team_data) 

write_csv(player_data_clean.xslx, file = here::here("dataset-ignore", "player_data_clean.csv"))
write_csv(team_data_clean.csv , file = here::here("dataset-ignore", "team_data_clean.csv"))

save(player_data_clean.csv, file = here::here("dataset-ignore/player_data.RData"))
save(team_data_clean.csv, file = here::here("dataset-ignore/team_data.RData"))

load(file = here::here("dataset-ignore/team_data.RData"))
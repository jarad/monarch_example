source("../util/read_dir.R")

require(dplyr)

read_dir(path = ".",
             pattern = "*.csv",
             into = c("na","type",
               "year","month","day","recorder",
               "site","transect","round",
               "extension")) %>%
  select(-na,-extension) %>%
  readr::write_csv(path = "nectar.csv")

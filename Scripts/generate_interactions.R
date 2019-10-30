
# see https://github.com/globalbioticinteractions/globalbioticinteractions/issues/423#issuecomment-547995639 
require(tidyverse)
TidyTrait <- read_csv("../Data/TidyTrait.csv")
FW <- read_csv("../Data/FW.csv")

interactions <- left_join(FW, TidyTrait, by = "Codigo") %>%
select( FullSpeciesNameValid, Family.x,
Plant_species19 , Family.y,
TOTAL)

write_csv(interactions,"../Data/interactions.csv")


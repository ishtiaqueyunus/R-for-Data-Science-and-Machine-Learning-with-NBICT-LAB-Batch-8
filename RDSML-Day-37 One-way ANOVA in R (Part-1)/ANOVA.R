# One-way ANOVA
# Importing the dataset
PlantGrowth <- PlantGrowth

# Importing the dplyr library
install.packages("dplyr")
library(dplyr)
# Computing the group means, sd, and se
stats <- PlantGrowth %>% 
  group_by(group) %>%
  summarise(
    mean = mean(weight),
    sd = sd(weight),
    se = sd(weight) / sqrt(n())
  )
# %>% : pipe operator

print(stats)  

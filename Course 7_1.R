data("ToothGrowth")
View(ToothGrowth)

install.packages(dplyr)

library(dplyr)

filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)
arrange(filtered_tg, len)
arrange(filter(ToothGrowth, dose==0.5), len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

View(filtered_toothgrowth)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T),.group="drop")

install.packages("tidyverse")
library(ggplot2)
library(ggpubr)
data("diamonds")
View(diamonds) # to view dataset
head(diamonds) # to view 6 first rows of dataset
colnames(diamonds) # to view the column names
str(diamonds)

library(tidyverse)
mutate(diamonds, carat_2 = carat*100)

## Cleaning Data
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
library("dplyr")

install.packages("palmerpenguins")
library("palmerpenguins")
skim_without_charts("palmerpenguins")

glimpse(penguins)
head(penguins)

penguins %>% 
  select(species) 


penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new=island)

rename_with(penguins, toupper) # all column names in uppercase
rename_with(penguins, tolower) # all column names in lowercase

clean_names(penguins)

## Organize Data
library(tidyverse)
penguins %>% arrange(bill_depth_mm) # ascending order
penguins %>% arrange(-bill_depth_mm) # descending order
penguins2 <- penguins %>% arrange(-bill_depth_mm)
penguins %>% group_by(island) %>% drop_na() %>%  summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>%  summarize(max_bill_length_mm = max(bill_length_mm))
arrange()
groupby
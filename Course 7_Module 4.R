## Visualization in R

# Visualization basics in R and tidyverse
install.packages("ggplot2") 
install.packages("palmerpenguins")
install.packages("tidyverse")
library(ggplot2) 
library(palmerpenguins)
data(penguins)
head(penguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = bill_length_mm, y = flipper_length_mm))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species, size = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "purple") # purple color for all points

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype=species)) 

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

glimpse(penguins)

ggplot(data = diamonds) +
  geom_bar(mapping=aes(x=cut, fill=cut))

ggplot(data = diamonds) +
  geom_bar(mapping=aes(x=cut, fill=clarity))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_wrap(~species) ## seperate plot for each species

ggplot(data = diamonds) +
  geom_bar(mapping=aes(x=cut, fill=cut)) +
  facet_wrap(~cut)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_grid(sex~species) ## seperate plot for each species

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body masss vs. Flipper length") # Add title 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body masss vs. Flipper length", subtitle = "Sample of Three Penguins Species") # Add title 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body masss vs. Flipper length", subtitle = "Sample of Three Penguins Species",
       caption="Data collected by Dr. Kristen Gorman") # Add title 

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body masss vs. Flipper length", subtitle = "Sample of Three Penguins Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text",  x=220, y=3500, label="The Gentoos are the largest")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body masss vs. Flipper length", subtitle = "Sample of Three Penguins Species",
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text",  x=220, y=3500, label="The Gentoos are the largest", color="blue",
           fontface="bold", size=4.5, angle=25)

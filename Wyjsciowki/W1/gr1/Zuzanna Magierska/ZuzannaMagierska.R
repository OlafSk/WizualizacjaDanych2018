# Przedstawic gestosc rozkladu smiertelnosci w podziale na kontynenty. 
# Pokazac ten sam wykres z uzyciem czterech tematów z pakietu ggthemes. 
# Wynikowy wykres pokazac na jednym rysunku (z uzyciem np. grid.arrange).

library(ggplot2)
library(SmarterPoland)
library(dplyr)
library(patchwork)
library(ggthemes)

density_death <- ggplot(data = na.omit(countries), aes(x = death.rate, fill = continent)) +
  geom_density(alpha = 0.2)

density_death1 <- density_death + theme_excel()
density_death2 <- density_death + theme_fivethirtyeight()
density_death3 <- density_death + theme_economist()
density_death4 <- density_death + theme_igray()

density_death1 + density_death2 + density_death3 + density_death4

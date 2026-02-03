# Load required libraries
library(tidyverse)

# Read in seasonal human interaction data
hi_season <- read_csv("../data/hi_by_season.csv")

# View structure of the data
glimpse(hi_season)

# Create a simple bar plot of cases by season
hi_season_plot <- ggplot(hi_season, aes(x = Season, y = Count)) +
  geom_col(fill = "steelblue") +
  labs(
    title = "Negative Human Interactions by Season",
    x = "Season",
    y = "Number of Cases"
  ) +
  theme_minimal()

# Display plot
hi_season_plot

# Save figure
ggsave(
  filename = "../figures/hi_by_season.png",
  plot = hi_season_plot,
  width = 8,
  height = 5
)


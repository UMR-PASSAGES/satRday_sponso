library(maps)
library(ggplot2)
library(dplyr)
events <- tribble(
  ~ place, ~ lat, ~ long,
  "Cape town", -33.918861, 18.423300,
  "Amsterdam",52.370216, 4.895168, 
  "Washington",38.907192, -77.036871,
  "Paris",48.864716, 2.349014,
  "Berlin",52.520008, 13.404954,
  "Los Angeles", 34.052235, -118.243683,
  "Neuchâtel",46.992979,6.931933,
  "Johannesburg",-26.195246, 28.034088,
  "Bordeaux",44.836151, -0.580816
)
map_data("world") %>% 
  ggplot(aes(long, lat, group=group)) +
  geom_polygon(fill="white", colour="gray") +
  geom_point(data = events, aes(long, lat, group = NULL), colour = "#3265B0", size = 2) + 
  guides(fill=FALSE) +
  coord_quickmap() +
  theme_void()
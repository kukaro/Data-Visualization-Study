# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(ggplot2)

wrld <- map_data('world')
par(mar=c(1,1,1,1))

qplot(
  long,
  lat,
  data = wrld,
  geom = 'polygon',
  fill = region,
  group = group
)


east <- wrld$region %in% c('South Korea', 'North Korea', 'China', 'Japan')
eastasia <- wrld[east,]

qplot(
  long,
  lat,
  data = eastasia,
  geom = 'polygon',
  fill = region,
  group = group
)
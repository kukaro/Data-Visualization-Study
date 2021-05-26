# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(sp)
library(stringr)
gadm <- readRDS('./gadm/gadm36_KOR_1_sp.rds')
plot(gadm)

population <- read.csv('./data/sido_population.txt', header = T)
population_sort <- population[order(population$Code),]

interval <- c(0, 100, 200, 300, 400, 900, 1100, 1300)
population_cut <- cut(population_sort$Y2010, breaks = interval)
gadm$population <- as.factor(population_cut)

col <- rainbow(length(levels(gadm$population)))
spplot(
  gadm,
  'population',
  col.regions = col,
  main = '2010 population')
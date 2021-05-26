# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(sp)
library(stringr)
gadm <- readRDS('./gadm/gadm36_KOR_2_sp.rds')
plot(gadm)

pollution <- read.csv('./data/city_pollution.txt', header = T)

#빨간점 찍기
for (i in 1:dim(pollution)[1]) {
  coords <- SpatialPoints(
    data.frame(cbind(pollution$x.longitude.[i], pollution$y.latitude.[i])),
    proj4string = CRS('+proj=longlat')
  )
  plot(coords, col = 'red3', pch = 20, cex = 1.5, add = T)
}

BROADTH <- 2 / 5
HEIGHT <- 0.1
SPACE <- 0.0
SPACE_DIF <- 0.2
#책에서는 SPACE는 0.1이였고 SPACE_DIF는0.05였음

#상자 찍기
for (i in 1:dim(pollution)[1]) {
  a <- c(
    pollution$x.longitude.[i] - BROADTH,
    pollution$x.longitude.[i] + BROADTH,
    pollution$x.longitude.[i] + BROADTH,
    pollution$x.longitude.[i] - BROADTH
  )

  b <- c(
    pollution$y.latitude.[i] - HEIGHT + SPACE_DIF,
    pollution$y.latitude.[i] - HEIGHT + SPACE_DIF,
    pollution$y.latitude.[i] + HEIGHT + SPACE_DIF,
    pollution$y.latitude.[i] + HEIGHT + SPACE_DIF
  )

  polygon(x = a, y = b, col = 'white')
}

cityLabels <- str_c(pollution$sido, ':', pollution$ozone_concentration)
cityCoord <- matrix(
  c(
    t(pollution$x.longitude.),
    t(pollution$y.latitude. + SPACE + SPACE_DIF)
  ),
  dim(pollution)[1]
)
text(cityCoord, labels = cityLabels, cex = 0.6, bg = 'white')
text(128, 38.6, labels = '\ub3c4\uc2dc\ubcc4 \uc624\uc874\ub18d\ub3c4', cex = 2)

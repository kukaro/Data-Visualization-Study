# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/04/10

install.packages('hexbin')
library(hexbin)
library(crayon)
windows(height = 7, width = 6.4)
hexbinplot(
  sqrt(price) ~ carat,
  data = diamonds,
  main = "diamonds",
  xlim = c(-0.5, 5.5),
  ylim = c(0, 160),
  xbins = 25,
  aspect = 1,
  colorkey = F,
  colramp = function(n) magenta(n, 255, 25)
)
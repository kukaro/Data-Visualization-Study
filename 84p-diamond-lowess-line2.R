# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-04-10

library(ggplot2)
data(diamonds) #diamonds 자료를 로딩함
str(diamonds)
attach(diamonds)
windows(height = 7, width = 6.4)
diamonds$sqrt.price <- sqrt(price)
plot(
  price ~ carat,
  col = 'gray',
  main = 'diamonds',
  xlim = c(-0.5, 5.5),
  ylim = c(-1000, 21000),
)
lines(
  lowess(diamonds$price ~ diamonds$carat, f = 0.1),
  lwd = 2,
  col = 'blue'
)
lines(
  lowess(diamonds$price ~ diamonds$carat, f = 0.25),
  lwd = 2,
  col = 'red',
  lty = 'dotdash',
)
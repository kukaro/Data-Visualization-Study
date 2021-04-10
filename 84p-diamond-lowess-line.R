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
  sqrt(price) ~ carat,
  col = 'gray',
  main = 'diamonds',
  xlim = c(-0.5, 5.5),
  ylim = c(0, 160),
)
lines(
  lowess(diamonds$sqrt.price ~ diamonds$carat, f = 0.1),
  lwd = 2,
  col = 'blue'
)
lines(
  lowess(diamonds$sqrt.price ~ diamonds$carat, f = 0.12),
  lwd = 2,
  col = 'green',
  lty = 'dotdash',
)
lines(
  lowess(diamonds$sqrt.price ~ diamonds$carat, f = 0.25),
  lwd = 2,
  col = 'red',
  lty = 'dotted',
)
#lty->line type의 약자
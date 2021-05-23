# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-24

library(zoo)
econ1 <- read.csv('./data/gdp.csv', header = T)
year <- seq(as.Date('1970-01-04'),
            as.Date('2013-12-01'),
            'quarter')
econ <- zoo(econ1, year)
plot(econ / 1000,
     ylab = 'GDP(\uc870 \uc6d0)',#text:Á¶ ¿ø
     xlab = '',
     col = 1:2,
     screens = 1)
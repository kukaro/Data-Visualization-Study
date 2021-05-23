# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-24

library(ggplot2)
library(scales)
gdp1 <- read.csv('./data/gdp.csv', header = T)
year <- seq(as.Date('1970-01-01'),
            as.Date('2013-12-01'),
            'quarter')
gdp_kr <- cbind(gdp1, year)
gdp <- gdp1['gdp']
gpdsa <- gdp1['gdpsa']
#aes는 aesthetic의 줄임말
ggplot(data = gdp_kr, aes(x = year)) +
    geom_line(aes(y = gdp / 1000, colour = '\uc6d0\uacc4\uc5f4')) +
    geom_line(aes(y = gdpsa / 1000, colour = '\uacc4\uc808\uc870\uc815\uacc4\uc5f4')) +
    ylab('GDP (\uc870 \uc6d0)') +
    scale_color_hue('GDP') +
    theme(legend.position = 'bottom')
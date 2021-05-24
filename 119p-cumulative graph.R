# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-24

library(ggplot2)
library(reshape2)
library(plyr)

pop_kr1 <- read.csv('./data/krpop_rk.csv', header = T)
pop_kr1
pop_kr <- melt(pop_kr1, id = 'age')
pop_kr$year <- as.numeric(substr(pop_kr$variable, 2, 5))
# 연령대별 인구 그래프 그리기


ggplot(pop_kr, aes(x = year, y = value / 10000, fill = age)) +
    geom_area(colour = 'black', size = 0.1, alpha = 0.4) +
    scale_fill_brewer(palette = 'Reds') +
    ylab('\uc778\uad6c\u0028\ub9cc \uba85\u0029') + #text:인구(만 명)
    scale_x_continuous(breaks = seq(1960, 2060, 5), expand = c(0, 0)) +
    theme_bw()

pop_kr_p <- ddply(pop_kr,
                  'year',
                  transform,
                  weight = value / sum(value) * 100)

ggplot(pop_kr_p, aes(x = year, y = weight, fill = age)) +
    geom_area(colour = 'black', size = 0.1, alpha = 0.4) +
    scale_fill_brewer(palette = 'Reds') +
    ylab('\uc778\uad6c\ube44\uc911(%)') +
    scale_x_continuous(breaks = seq(1960, 2060, 10), expand = c(0, 0)) +
    theme_bw()
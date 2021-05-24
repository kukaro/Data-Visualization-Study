# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-24

library(ggplot2)
cb <- read.csv('./data/cb_rk.csv', header = T)
#year <- 연도
#current_account <- 경상수지
cb$current_account <- cb$current_account / 100
cb$pos <- cb$current_account >= 0
ggplot(cb, aes(x = year, y = current_account, fill = pos)) +
    geom_bar(stat = 'identity', position = 'identity', colour = 'black', size = 0.25) +
    scale_fill_manual(values = c('red', 'black'), guide = F) +
    ylab('\uacbd\uc0c1\uc218\uc9c0\u0028\uc5b5 \ub2ec\ub7ec\u0029') + #text:경상수지(억 달러)
    xlab('\uc5f0\ub3c4') + #연도
    theme_bw()
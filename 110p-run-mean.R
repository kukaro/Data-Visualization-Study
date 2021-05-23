# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-24

library(ggplot2)
library(quantmod)
kospi <- na.omit(getSymbols('^KS11', auto.assign = F)[, 4])
#na.omit으로 NA제거
kospi$ma <- runMean(kospi, n = 200,)
colnames(kospi) <- c(
    '\uc885\ud569\uc8fc\uac00\uc9c0\uc218',
    '\u0032\u0030\u0030\uc77c \uc774\ud3c9\uc120')
#text:종합주가지수
#text:200일 이평선
autoplot(kospi, facets = NULL) +
    xlab('\uc5f0\ub3c4') + #text:연도
    theme(panel.background = element_rect(fill = 'white', colour = 'gray'), legend.position = 'none')
# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/04/02

kings <- read.table('chosun kings_utf8.txt', header = T)
hist(Period,
     xlim = c(0, 70),
     ylim = c(0, 10),
     nclass = 14,
     right = F,
     main = "조선 왕조",
     xlab = "재위기간(년)",
     ylab = "빈도")


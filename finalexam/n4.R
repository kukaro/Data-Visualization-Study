# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(coronavirus)
library(ggplot2)
cor <- coronavirus
contry_type <- cor[, c(3, 6)]
cor_kor <- cor[contry_type$country == 'Korea, South' & contry_type$type == 'confirmed',]

ggplot(data = cor_kor,
       aes(x = date, y = cases)) +
  geom_area(colour = 'black', fill = 'blue', alpha = .25)

sample_cnt <- 30
for (i in 1:(dim(cor_kor)[1])) {
  s <- max(1, i - sample_cnt %/% 2)
  e <- min(dim(cor_kor)[1], i + sample_cnt %/% 2)
  cor_kor$mean[i] <- mean(cor_kor$cases[s:e])
}

ggplot(data = cor_kor,
       aes(x = date, y = mean)) +
  geom_area(colour = 'black', fill = 'red', alpha = .25)

for (i in 1:(dim(cor_kor)[1])) {
  s <- max(1, i - sample_cnt %/% 2)
  e <- min(dim(cor_kor)[1], i + sample_cnt %/% 2)
  cor_kor$gradient[i] <- (cor_kor$mean[s] - cor_kor$mean[e])/(abs(s-e))
}

ggplot(data = cor_kor[1:(dim(cor_kor)[1] - sample_cnt),],
       aes(x = date, y = gradient)) +
  geom_area(colour = 'black', fill = 'white', alpha = .25)

maxes <- c()

for (i in 1:(dim(cor_kor)[1])) {
  if (!is.nan(cor_kor$gradient[i]) &
    cor_kor$gradient[i] < 0 &
    cor_kor$gradient[i + 1] > 0) {
    maxes <- c(maxes, T)
  }else {
    maxes <- c(maxes, F)
  }
}
n <- cor_kor[maxes,]

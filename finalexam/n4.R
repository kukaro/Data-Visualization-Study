# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(coronavirus)
cor <- coronavirus
# cor$country=='Korea, South'
contry_type <- cor[, c(3, 6)]
cor_kor <- cor[contry_type$country == 'Korea, South' & contry_type$type == 'confirmed',]
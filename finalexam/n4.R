# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(coronavirus)
library(ggplot2)
cor <- coronavirus
contry_type <- cor[, c(3, 6)]
cor_kor <- cor[contry_type$country == 'Korea, South' & contry_type$type == 'confirmed',]

wrld <- map_data('world')
korea <- wrld[wrld$region %in% 'South Korea',]

qplot(
  long,
  lat,
  data = korea,
  geom = 'polygon',
  fill = region,
  group = group
)+geom_point(aes(long,lat,fill=NULL,group=NULL),size=1,data=cor_kor)
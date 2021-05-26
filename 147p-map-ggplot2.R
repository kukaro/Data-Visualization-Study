# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(dismo)
library(rgdal)


mymap <- gmap('South Korea')
plot(mymap)

mymap <- gmap('South Korea', type = 'roadmap')
plot(mymap)

mymap <- gmap('South Korea', type = 'satelite')
plot(mymap)
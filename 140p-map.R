# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

library(maps)
map()
#해상도가 낮은 세계전도 출력가능

# 우리나라 지도 그리기
map(database = 'world', resgion = 'South Korea')

# 동사이사 지도 그리기
eastasia <- c('South Korea', 'North Korea', 'China', 'Japan')
map(database = 'world', region = eastasia)

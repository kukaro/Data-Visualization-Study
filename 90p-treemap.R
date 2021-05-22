# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-23

#나무 지도라고 부르더라
library(treemap)
GNI.2010 <- read.table('./3ch/GNI-2010.txt', header = T)[1:104,]
str(GNI.2010)
treemap(GNI.2010,
        index = c('sector', 'item'),
        vSize = 'principal',
        vColor = 'yield',
        type = 'value',
        bg.labels = 'yellow',
        title = 'Portpolio Evaluation GNI.2010 [1:104]')
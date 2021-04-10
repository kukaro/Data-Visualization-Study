# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/04/10

exam <- read.table('./3ch/exam scores_2012.txt', header = T)
exam <- exam[!is.na(exam$mid) & !is.na(exam$final),]
windows(height = 5.5, width = 5)
plot(exam$mid,
     exam$final,
     pch = 20,
     xlim = c(-5, 40),
     ylim = c(-5, 40),
     col = 'blue',
     xlab = '\uc911\uac04\uc2dc\ud5d8',
     ylab = '\uae30\ub9d0\uc2dc\ud5d8',
     main = '\ud1b5\uacc4\uc801 \uc0ac\uace0',)
library(KernSmooth)
density <- bkde2D(exam, bandwidth = c(2.5, 2.5))
par(new = T)
contour(density$x1,
        density$x2,
        density$fhat,
        xlim = c(-5, 40),
        ylim = c(-5, 40),
        col = heat.colors(7)[7:1],
        nlevels = 7,
        lwd = 2,
)

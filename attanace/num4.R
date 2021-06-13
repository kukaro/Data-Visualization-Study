# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-06-14


library('randomcoloR')
total <- read.csv('attanace/data/data.csv', header = T)
geoIds <- c('KR', 'CN', 'US', 'FR')
par(mfrow = c(2, 2))
for (geoId in geoIds) {
    contry <- na.omit(total[total$geoId == geoId,])
    x <- as.Date(paste0(contry$year, '/', contry$month, '/', contry$day))
    y <- contry$cases
    plot(
        x = x,
        y = y,
        pch = 20,
        xlim = c(min(x), max(x)),
        xlab = paste0(geoId, '-time'),
        ylab = paste0(geoId, '-cases'),
        col = randomColor(),
        type = 'l'
    )
}

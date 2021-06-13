# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-06-14

#windows(height = 5.5, width = 5)
par(mfrow = c(2, 2))
attach(anscombe)
for (i in 1:4) {
    x <- get(paste0('x', i))
    y <- get(paste0('y', i))
    plot(x = x,
         y = y,
         pch = 20,
         xlab = paste0('x', i),
         ylab = paste0('y', i),
         col = rainbow(7)
    )
    abline(lm(y ~ x), col = 'red')
}
length(anscombe)
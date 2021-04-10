# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-04-10

exam <- read.table('./3ch/exam scores_2012.txt', header = T)
# exam <- exam[!is.na(exam$mid) & !is.na(exam$final),]
windows(height = 5.5, width = 5)
plot(exam$mid,
     exam$final,
     pch = 20,
     xlim = c(-5, 40),
     ylim = c(-5, 40),
     col = 'blue',
     xlab = '\uc911\uac04\uc2dc\ud5d8', #중간시험
     ylab = '\uae30\ub9d0\uc2dc\ud5d8', #기말시험
     main = '\ud1b5\uacc4\uc801 \uc0ac\uace0', #통계적 사고
)
abline(lm(exam$final ~ exam$mid), col = 'red')
diff <- mean(exam$final, na.rm = T) - mean(exam$mid, na.rm = T)
abline(c(diff, 1), lty = 'dotted')
# abline(diff, 1, lty = 'dotted')
abline(c(diff, 2), lty = 'dotted', col = 'green')
#앞의 두번째 값은 기울기인듯, 주석친 라인과 윗 라인은 동일한코드인것 같다
#대충 이해하기론 abline은 그냥 값들을 직선으로 만드는 라인을 긋는 함수인것 같다
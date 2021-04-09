# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/04/10

exam <- read.table('./3ch/exam scores_2012.txt', header = T)
str(exam) #str -> struct의 약자로 해당 객체를 자세히 보여준다
attach(exam) #해당 데이터프레임 컬럼들을 변수로 접근할 수 있게 해준다.
summary(exam) #요약 값을 볼 수 있다.
#결측은 계산에 추가되지 않는다
mid[is.na(mid)] <- 0
final[is.na(final)] <- 0
windows(height = 5.5, width = 5)

n <- length(mid)
plot(mid + runif(n, -0.5, 0.5),
     final + runif(n, -0.5, 0.5),
     pch = 20,
     xlim = c(-5, 40),
     ylim = c(-5, 40),
     col = 'blue',
     xlab = "\uc911\uac04\uace0\uc0ac",
     ylab = "\uae30\ub9d0\uc2dc\ud5d8",
     main = "\ud1b5\uacc4\uc801\uc0ac\uace0")
#이 값들은 결시값을 처리했음
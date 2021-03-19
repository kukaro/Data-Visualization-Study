# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-03-19

kings <- read.table('chosun kings.txt', header = T)
str(kings) #R객체의 내부 구조를 보여준다
attach(kings)
windows(width = 5.5, height = 4.5)
hist(Period,
     xlim = c(0, 70),
     ylim = c(0, 10),
     nclass = 14,
     right = F,
     main = "\uC870\uC120\uC655\uC870",#조선왕조
     xlab = "\uC7AC\uC704\uAE30\uAC04\u0028\uB144\u0029",#재위기간(년)
     ylab = "\uBE48\uB3C4",#빈도
     col = c(
         rep('lightblue', 2),
         rep('royalblue', 6),
         rep('navyblue', 6)
     )
)
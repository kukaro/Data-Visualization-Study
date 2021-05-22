# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-23
# Reference : https://rfriend.tistory.com/tag/addmargins%28%29

#종속변수를 바꿔주면서 이변량을 표현할 수 있다.

data(Titanic)
str(Titanic)

res <- apply(Titanic, c(4, 1), sum)

addmargins(res)

mosaicplot(data = Titanic, ~Sex + Survived, color = c('grey', 'red'))
mosaicplot(data = Titanic, ~Age + Survived, color = c('grey', 'red'))
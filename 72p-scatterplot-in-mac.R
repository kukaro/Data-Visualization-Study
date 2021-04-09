# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/04/10

exam <- read.table('./3ch/exam scores_2012.txt', header = T)
str(exam) #str -> struct의 약자로 해당 객체를 자세히 보여준다
attach(exam) #해당 데이터프레임 컬럼들을 변수로 접근할 수 있게 해준다.
summary(exam) #요약 값을 볼 수 있다.
# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-03-19

kings <- read.table('chosun kings.txt', header = T)
str(kings) #R객체의 내부 구조를 보여준다
attach(kings)
# What is an attach function.
# The database is attached to the R search path.
# This means that the database is searched by R when evaluating a variable,
# so objects in the database can be accessed by simply giving their names.
windows(width = 5.5, height = 4.5)
hist(Life)
# str은 단순히 확인
# attach함수를 통해서 kings의 메소드 및 함수를 직접 접근 가능(Name,Life,Period)
# windows로 창 띄움
# hist로 띄어진 창에 표시
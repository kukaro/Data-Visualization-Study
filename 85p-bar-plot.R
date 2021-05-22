# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-23

data(Titanic)
#data function : load specified data sets, or list the available data sets
str(Titanic)

res <- apply(Titanic, 1, sum)
#apply는 행이나 열단위로 함수를 적용하게 해준다
#위의 경우 Titanic을 행방향(1, 2는 열방향)으로 합계를 구한다
#여기서 행방향이라는것은 값의 결과가 행으로 나온다는것임, 즉 합계는 열끼리 합쳐야 행으로 값이 나옴
res
barplot(res)
#결과
#1st  2nd  3rd Crew
#325  285  706  885
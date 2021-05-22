# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-05-23
# Reference : https://rfriend.tistory.com/tag/addmargins%28%29

'**********'
data(Titanic)
#data function : load specified data sets, or list the available data sets
str(Titanic)

res <- apply(Titanic, c(4, 1), sum)
#apply는 행이나 열단위로 함수를 적용하게 해준다
#위의 경우 Titanic을 행방향(1, 2는 열방향)으로 합계를 구한다
#여기서 행방향이라는것은 값의 결과가 행으로 나온다는것임, 즉 합계는 열끼리 합쳐야 행으로 값이 나옴
'#apply'
res
#barplot(res)
#결과
#        Class
#Survived 1st 2nd 3rd Crew
#     No  122 167 528  673
#     Yes 203 118 178  212
'#addmargins'
addmargins(res)
#분할표에 한계분포 추가
#        Class
#Survived 1st 2nd 3rd Crew  Sum
#     No  122 167 528  673 1490
#     Yes 203 118 178  212  711
#     Sum 325 285 706  885 2201
mosaicplot(data = Titanic, ~Class + Survived, color = c('grey', 'red'))
# Title     : TODO
# Objective : TODO
# Created by: coeat
# Created on: 2021/05/26

data(UCBAdmissions)
str(UCBAdmissions)
apply(UCBAdmissions, c(1, 2), sum)
mosaicplot(~Gender + Admit,
           data = UCBAdmissions,
           color = c('red', 'grey'),
           main = 'UC Berkeley Admissions')
#이것만 보면 여성이 남성에 비해서 합격에 차별을 받았다고 보여진다.

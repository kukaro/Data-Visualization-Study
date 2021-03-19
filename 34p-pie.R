# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-03-20

blood_type <- c("A", "O", "AB", "O", "B", "O", "O", "AB", "B", "B", "B", "A", "B", "O", "O", "A", "AB", "O", "A", "O", "B", "B", "O", "O", "B", "O", "O", "AB", "B", "O", "O", "A", "A", "AB", "AB", "AB", "B", "O", "B", "O", "AB", "B", "A", "A", "O", "O", "B", "B", "AB", "AB", "AB", "A", "A", "A", "O", "B", "A", "B", "O", "O", "AB", "O", "B", "AB", "O", "B", "A", "B", "B", "O", "O", "B", "AB", "AB", "A", "O", "AB", "A", "O", "O", "O", "AB", "O", "B", "O", "B", "AB", "B", "O", "A", "AB", "AB", "A", "A", "B", "O", "AB", "O", "B", "A")
sorted_blood_type <- sort(table(blood_type), decreasing = T)
par(mfrow = c(1, 2))
slices<-c('red','blue','yellow','green')
pie(sorted_blood_type,col=slices,radius=1,main="\uC6D0\uADF8\uB798\uD504")
print(sorted_blood_type)


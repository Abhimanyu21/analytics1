data(women)
women
names(women)
str(women)



cov(women$height,women$weight)
cor(women$height,women$weight)
plot(x=women$height,y=women$weight, type='b')
abline(lm(weight~height, data=women), col='red')
names(women)

fit1=lm(weight~height,data=women)
summary(fit1)
attributes(fit1)
coef(fit1)
range(women$height)
range(women$weight)
#prediction for height =65,66
(new1=data.frame(height=c(71,66.9)))
new1
(p1=predict(fit1,newdata = new1))
cbind(new1,p1)

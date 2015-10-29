
attach(Auto)
lm.auto<-lm(Auto$mpg~Auto$horsepower,data=Auto)
summary(lm.auto)

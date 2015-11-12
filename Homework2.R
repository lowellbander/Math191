  
  #Hw 2
  
  #1)a)
  
  attach(Auto)
  lm.auto<-lm(Auto$mpg~Auto$horsepower,data=Auto)
  summary(lm.auto)
  
  # We can certainly see a relationship between the predictor (horsepower) and the response (mpg)
  # The relationship between the predictor and the response is very strong. The amount of variation in mpg as explained by horsepower is a whopping 60.59%.
  # There is a negative relationship between the predictor and the response. The line produced by the simple linear regression has a slope of -0.157845.
  
  autodata<-data.frame(horsepower = 98)
  predict(lm.auto,autodata,interval = "prediction",level = 0.95)
  predict(lm.auto,autodata,interval = "confidence",level= 0.95)
  
  #1)b)
  
  plot(Auto$horsepower, Auto$mpg)
  abline(lm.auto)
  
  #1)c)
  par(mfrow=c(2,2))
  plot(lm.auto)
  

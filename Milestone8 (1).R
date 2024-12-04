


Causes.lm<-lm(Deaths~Age_Adjusted_Death_Rate + Death_Rate ,data= Causes )
Causes.lm

summary(Causes.lm)$r.squared
#histogram of the residuals
hist(resid(Causes.lm))

#plot a scatter plot of the fitted(predict) values and residuals
plot(fitted.values(Causes.lm),resid(Causes.lm))
#add ahorizontal line at 0 to the plot
abline(h=0, col="red")
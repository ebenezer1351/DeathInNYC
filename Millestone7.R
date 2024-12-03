# for the Deaths column

# Compute the sample mean for number of death
xbar1 <- mean(Causes2$Deaths,trim = 0.1)

# Compute the sample standard deviation
s1 <- sd(Causes2$Deaths)

# Store the sample size in n1  

n1 <- nrow(Causes2)

n1

#  the t-interval 

t<- qt(0.975,n1-1)
t
lower<-xbar1 - t*s1/sqrt(n1)
lower
upper<-xbar1 + t*s1/sqrt(n1)
upper


# Compute the sample mean for Age Adjusted Death Rate
xbar2 <- mean(Causes4$Age_Adjusted_Death_Rate,trim = 0.1)
# Compute the sample standard deviation
s2 <- sd(Causes4$Age_Adjusted_Death_Rate)
# of the dataframe: 


# Store the sample size in n  

n2 <- nrow(Causes4)

#  the t<-interval 

t <- qt(0.975,n2-1)
t
lower<-xbar2 - t*s2/sqrt(n2)
lower
upper<-xbar2 + t*s2/sqrt(n2)
upper


# Compute the sample mean for  death rate
xbar3 <- mean(Causes3$Death_Rate,trim = 0.1)

# Compute the sample standard deviation
s3 <- sd(Causes3$Death_Rate)
# of the dataframe: 

nrow(Causes3)
# Store the sample size in n  

n3 <- nrow(Causes3)


#  the t-interval 

t<- qt(0.975,n3-1)
t
lower<-xbar3 - t*s3/sqrt(n3)
lower
upper<-xbar3 + t*s3/sqrt(n3)
upper


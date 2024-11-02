barplot(table(Causes$`Leading Cause`) ,cex.names =0.3  ,las= 1,names.arg = rownames(table(Causes$`Leading Cause`)),horiz = TRUE ,ylab = "Leading Causes",xlab = "frequency of death" ,main= "Bar chart of leading cause of death")
Causes$Deaths<-as.numeric(gsub("[\\.,]","",Causes$Deaths))
Causes$Deaths
hist(Causes$Deaths,main = "Histogram of Death",xlab= "Number of Death",ylab="Frequency")
Causes$`Death Rate`<-as.numeric(gsub("[\\.,]","",Causes$`Death Rate`))
hist(Causes$`Death Rate`,main = "Histogram of Death Rate",xlab= "Death Rate",ylab="Frequency")
Causes$`Age Adjusted Death Rate`<-as.numeric(gsub("[\\.,]","",Causes$`Age Adjusted Death Rate`))
Causes$`Age Adjusted Death Rate`
hist(Causes$`Age Adjusted Death Rate`,main = "Histogram of Age Adjusted Death Rate",xlab= "Age Adjusted Death Rate",ylab="Frequency")

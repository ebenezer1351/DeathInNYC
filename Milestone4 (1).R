Causes$Deaths<-as.numeric(gsub("[\\.,]","",Causes$Deaths))
Causes$Deaths
hist(Causes$Deaths,main = "Histogram of Death",xlab= "Number of Death",ylab="Frequency")
Causes2<-subset(Causes,Deaths<4000)
Causes2
hist(Causes2$Deaths,main = "Histogram of Death",xlab= "Number of Death",ylab="Frequency")

Causes$'Death Rate'<-as.numeric(gsub("[\\.,]","",Causes$'Death Rate'))
Causes$'Death Rate'
hist(Causes$'Death Rate',main = "Histogram of Death Rate",xlab= " Death Rate",ylab="Frequency")
Causes3<-subset(Causes,'Deaths Rate'<4000)
Causes3
hist(Causes3$'Death Rate',main = "Histogram of Death Rate",xlab= " Death Rate",ylab="Frequency")

Causes$`Age Adjusted Death Rate`<-as.numeric(gsub("[\\.,]","",Causes$`Age Adjusted Death Rate`))
Causes$`Age Adjusted Death Rate`
hist(Causes$`Age Adjusted Death Rate`,main = "Histogram of Age Adjusted Death Rate",xlab= "Age Adjusted Death Rate",ylab="Frequency")
Causes4<-subset(Causes,`Age Adjusted Death Rate`<3000)
Causes4
hist(Causes4$`Age Adjusted Death Rate`,main = "Histogram of `Age Adjusted Death Rate`",xlab= " Age Adjusted Death Rate`",ylab="Frequency")
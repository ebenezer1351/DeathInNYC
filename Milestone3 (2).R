
library(dplyr)
Causes<-Causes%>%
  rename(
    Deaths= Deaths,
    Age_Adjusted_Death_Ratee =  'Age Adjusted Death Rate', 
    Death_Rate='Death Rate',
    Leading_Cause ='Leading Cause'
    
  )
Causes
barplot(table(Causes$Leading_Cause) ,cex.names =0.3  ,las= 1,names.arg = rownames(table(Causes$`Leading Cause`)),horiz = TRUE ,ylab = "Leading Causes",xlab = "frequency of death" ,main= "Bar chart of leading cause of death")
cause_freq <- sort(table(Causes$Leading_Cause), decreasing = TRUE) 
bar_colors <- rainbow(length(cause_freq)) # Use a rainbow palette for distinct colors  

# Generate a frequency table for the Leading Cause column  
cause_freq <- sort(table(Causes$Leading_Cause), decreasing = TRUE)  

# Define a color palette for the bars  
bar_colors <- rainbow(length(cause_freq)) # Use a rainbow palette for distinct colors  

# Create the bar plot and save its dimensions  
barplot_heights <- barplot(  
  cause_freq, # Frequency data  
  cex.names = 0.3, # Adjust text size for better readability  
  las = 1, # Rotate axis labels to horizontal  
  horiz = TRUE, # Horizontal bar chart  
  col = bar_colors, # Apply the color palette  
  ylab = "Leading Causes",  
  xlab = "Frequency of Death",   
  main = "Bar Chart of Leading Causes of Death" # Chart title  
)  

#Add a legend to the bar chart  
legend(  
  "topright",   
  legend = names(cause_freq), # Labels for the legend  
  fill = bar_colors, # Colors corresponding to the bars  
  cex = 0.5,  
  title = "Leading Causes", # Title for the legend  
    
)  



Causes$Deaths<-as.numeric(gsub("[\\.,]","",Causes$Deaths))
Causes$Death_Rate<-as.numeric(gsub("[\\.,]","",Causes$Death_Rate))
Causes$Age_Adjusted_Death_Ratee<-as.numeric(gsub("[\\.,]","",Causes$Age_Adjusted_Death_Rate))


Causes$Deaths
Causes$Death_Rate
Causes$Age_Adjusted_Death_Rate

hist(Causes$Deaths,main = "Histogram of Death",xlab= "Number of Death",ylab="Frequency")
hist(Causes$Death_Rate,main = "Histogram of Death Rate",xlab= "Death Rate",ylab="Frequency")
hist(Causes$Age_Adjusted_Death_Ratee,main = "Histogram of Age Adjusted Death Rate",xlab= "Age Adjusted Death Rate",ylab="Frequency")

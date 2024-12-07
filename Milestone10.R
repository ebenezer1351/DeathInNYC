#New Hypothesis Test: Mean Age-Adjusted Death Rate by Race/Ethnicity
#Null Hypothesis (H₀): The mean age-adjusted death rates are equal across all race/ethnicity groups.
#Alternative Hypothesis (H₁): At least one race/ethnicity group has a different mean age-adjusted death rate.
par(mar = c(10, 10, 4, 1))
boxplot(Age_Adjusted_Death_Rate ~ Race_Ethnicity, data = Causes,  
     main = "Boxplot of Age Adjusted Death Rate by Race",  
     xlab = "Race",  
     ylab = "Age Adjusted Death Rate"  
)
#Perform one-way ANOVA  
Race_aov <- aov(Age_Adjusted_Death_Rate ~ Race_Ethnicity, data = Causes)  


# Display the summary of the ANOVA test  
summary(Race_aov)  

# Post-hoc test (Tukey HSD) to see which groups differ  
posthoc_Race<- TukeyHSD(Race_aov)  


# Display the confidence intervals of the difference in means,
# for each pair of race.
posthoc_Race

# Plot the confidence intervals for the difference between
# each pair of means
par(mar = c(10, 18, 4, 2))
plot(posthoc_Race,las = 2,cex.axis = 0.8)

# Get the grand mean and group means
model.tables(Race_aov,"means")











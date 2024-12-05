#hypothesis1
#Null Hypothesis (H₀): The mean number of deaths (Deaths) is equal for males and females.
#Alternative Hypothesis (H₁): The mean number of deaths (Deaths) is different for males and females.
#Test Type: Two-sample t-test (independent samples).
#Reason: This hypothesis tests whether there is a significant difference in the mean number of deaths between genders.
# Subset data by gender  
male_deaths <- Causes$Deaths[Causes$Sex == "M"]  
female_deaths <- Causes$Deaths[Causes$Sex == "F"]  
length(male_deaths)
length(female_deaths)
# Perform two-sample t-test  
t_test_gender <- t.test(male_deaths, female_deaths, alternative = "two.sided", var.equal = TRUE)  
t_test_gender  

#hypothesis2
#Null Hypothesis (H₀): The mean age-adjusted death rate (Age_Adjusted_Death_Rate) for one leading cause (e.g., "Heart Disease") is equal to the mean age-adjusted death rate for another leading cause (e.g., "Cancer").
#Alternative Hypothesis (H₁): The mean age-adjusted death rate for "Heart Disease" is different from that for "Cancer."
#Test Type: Two-sample t-test (independent samples).
#Reason: This hypothesis tests whether the age-adjusted death rates differ significantly between two leading causes of death.
# Subset data for two leading causes  
heart_disease <- Causes$Age_Adjusted_Death_Rate[Causes$Leading_Cause == "Diseases of Heart (I00-I09, I11, I13, I20-I51)"]  
cancer <- Causes$Age_Adjusted_Death_Rate[Causes$Leading_Cause == "Malignant Neoplasms (Cancer: C00-C97)"]  
length(heart_disease)
length(cancer)
# Perform two-sample t-test  
t_test_causes <- t.test(heart_disease, cancer, alternative = "two.sided", var.equal = TRUE)  

t_test_causes  

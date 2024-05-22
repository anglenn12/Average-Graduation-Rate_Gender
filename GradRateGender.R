library(dplyr)
library(tidyr)


#looking at its mean, median, mode
summary(GradRateGender)

#previewing the dataset
head(GradRateGender)



#finding the average
avg_grad_rates <- GradRateGender %>%
  group_by(Institution_Type, Gender) %>%
  summarise(
    `Avg Grad Rate 2yr` = mean(`Grad Rate 2yr`, na.rm = TRUE),
    `Avg Grad Rate 3yr` = mean(`Grad Rate 3yr`, na.rm = TRUE),
    `Avg Grad Rate 4yr` = mean(`Grad Rate 4yr`, na.rm = TRUE),
    `Avg Grad Rate 5yr` = mean(`Grad Rate 5yr`, na.rm = TRUE),
    `Avg Grad Rate 6yr` = mean(`Grad Rate 6yr`, na.rm = TRUE)
  )

#viewing the average grad rate
print(avg_grad_rates)

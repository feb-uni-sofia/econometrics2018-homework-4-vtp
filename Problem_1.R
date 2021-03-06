## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)
table(houseWork$sex)

## b)
HoursMale <- houseWork[houseWork$sex == 'm', 'hours']
mean(HoursMale)

HoursFemale <- houseWork[houseWork$sex == 'f', 'hours']
mean(HoursFemale)

## c)
houseWork <- within(houseWork, { 
  female <- ifelse(houseWork$sex == 'f', 'TRUE', 'FALSE')
  male <- ifelse(houseWork$sex == 'm', 'TRUE', 'FALSE')
})

## d)
fit <- lm(hours ~ female, data = houseWork)
summary(fit)

## e) The coefficient beta0 shows the time needed for house work 
## independently from the number of females added. While beta1 shows
## how much the hours for house work for each subsequent women are decreasing.

## f)
t.test(HoursFemale, HoursMale, alternative = 'greater')

## g)
pt(-14.94149, df = 11016 - 2)

## h) No, because the p-value is greater than 0.05.

## i) Central Limit Theorem and Normal Distribution are the distributional 
## assumptions of the test and justify the confidential interval.

## j)
fitAll <- lm(hours ~ female + male, data = houseWork)
summary(fitAll)

## There is no relationship between the variables.
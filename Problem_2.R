## Homework 4, Problem 2
crime <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv', stringsAsFactors = FALSE)
str(crime)

## a)
fit <- lm(C ~ HS, data = crime)
summary(fit)

## b)
  
## c)
fit1 <- lm(C ~ HS + U, data = crime)
summary(fit1)

## Tested apart from the other factors, HS has a positive contribution to
## the crime rate, but when we add percent of urban, the relationship between
## HS and the crime rate becomes negative.(Simpson's Paradox)

## d) They are wrong, because the education does not increase the crime rates.
## The increase in crime rates is a consequences of the urbanization, which has
## positive contribution on them. But also educated people live mainly in the cities,
## and the positive contribution from (1) includes the urban influence.

## e)

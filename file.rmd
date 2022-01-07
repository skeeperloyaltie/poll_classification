
# Load the data set. 

load("polls2020.RData")

# Categorize the functionailty and data types.

head(polls2020)


# Dimensions

dim(polls2020)


#Summary of the data set

summary(polls2020)

#Visualize 

install.packages("plyr")

library(plyr)

hist(polls2020$samplesize)

boxplot(polls2020$samplesize)



# Correct Errors

polls2020$state < toupper(polls2020$state)

polls$candidate_name <- toupper(polls2020$candidate_name)

polls$pollster <- toupper(polls2020$pollster)

# Visualize

head(polls2020)


# correct Errors

library(stringr)

polls2020$pollster <- str_trim(polls2020$pollster)

polls2020$candidate_name <- str_trim(polls2020$candiate_name)

head(polls2020)

#Replace Outliers
replace <- boxplot.stats(polls2020$samplesize)
polls2020$samplesize[polls2020$samplesize %in% replace] <- median(polls2020$samplesize)


# Remove Missing Values and replace them with 0
sum(is.na(polls2020))

any(is.na(polls2020))

polls2020[is.na(polls2020)] <- 0

sum(is.na(polls2020))

any(is.na(polls2020))


# Visualzie 

plot(polls2020)

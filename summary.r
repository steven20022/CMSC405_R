# get R documentation of the summary function
?summary

# call summary giving one catagorical variable
# it gives us the number of data points in each
# species
summary(iris$Species)

# call summary giving it one quantitative variable
# it give us the min, first quartile, median, mean,
# third quartile, and max
summary(iris$Sepal.Length)

#  call summary giving it the entire iris data frame
# it gives us for each quantitative variable the
# min, first quartile, median, mean,
# third quartile, and max and for the categorical variable
# it gives us the number of data points in each species
summary(iris)

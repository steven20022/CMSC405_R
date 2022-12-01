# the histogram function is used to create histograms
# get R documentation histogram function
?hist

# call histogram function giving it one quantitative
# variable in the iris data frame at a time
# x-axis is telling us the different sepal lengths
# y-axis is telling us the number of data points
# in each sepal length
# this generated a somewhat normal distribution
hist(iris$Sepal.Length)
# this generated a somewhat normal distribution
hist(iris$Sepal.Width)
# this generated a some outlier data
hist(iris$Petal.Length)
# this generated a some outlier data
hist(iris$Petal.Width)

# when observe anomolies in the data, like outlier data,
# it comes in handy to group your plots together

# the par function may be used to group plots together
# the par function changes the graphic default parameters
# get R documentation on par
?par

# get R documentation on the concatenate function - combines
# arguments
?c

# group three histograms in three rows and one column
par(mfrow = c(3, 1))

# create a histogram for each species of iris
# inside the square brackets, we include a
# selector that specifies 
hist(iris$Petal.Width[iris$Species == "setosa"],
    xlim = c(0, 3), # limit x-axis from 0 to 3
    breaks = 9, # seggestiom of number of bars
    main = "Petal Width for Setosa",
    xlab = "",
    col = "red"
)

hist(iris$Petal.Width[iris$Species == "versicolor"],
    xlim = c(0, 3), # limit x-axis from 0 to 3
    breaks = 9, # seggestiom of number of bars
    main = "Petal Width for Versicolor",
    xlab = "",
    col = "purple"
)

hist(iris$Petal.Width[iris$Species == "virginica"],
    xlim = c(0, 3), # limit x-axis from 0 to 3
    breaks = 9, # seggestiom of number of bars
    main = "Petal Width for Virginica",
    xlab = "",
    col = "blue"
)

# restore graphic default parameters so that the
# graphics are no longer grouped
par(mfrow = c(1, 1))

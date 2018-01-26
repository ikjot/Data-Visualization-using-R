#Missing values in R

#creating vector
x <- c(1,2,3,4,NA,6:7,NA)
x

#[1]  1  2  3  4 NA  6  7 NA

is.na(x)
#[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE

which(is.na(x))
#[1] 5 8

#identify count of missing values
sum(is.na(x))

#code the misisng values
mean(x) #can't find mean with missing values

mean(x, na.rm = TRUE) #therefore, removing missing values

x[is.na(x)] <- mean(x, na.rm = TRUE) #assigning misisng values with mean
x

# we can also replace it with mode <- one of the method
# Do check what is the impact of using a particular method


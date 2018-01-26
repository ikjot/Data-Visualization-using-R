n = c(1,2,3)

s = c("aa","bb","cc")

b = c(TRUE,FALSE,TRUE)

df = data.frame(n, s, b)

df


# n  s     b
# 1 1 aa  TRUE
# 2 2 bb FALSE
# 3 3 cc  TRUE

m = matrix(1:10,5,2)
m

# [,1] [,2]
# [1,]    1    6
# [2,]    2    7
# [3,]    3    8
# [4,]    4    9
# [5,]    5   10

m[4,1]

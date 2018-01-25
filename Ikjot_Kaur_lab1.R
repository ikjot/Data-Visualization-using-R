#R as Calculator
1+2
3^2
exp(2)-log(100)

exp(2)-log(100) # Try “log(10,100)”
"log(10,100)"

sqrt(abs(-2))
output <- 1
a<-1
b=2 
(a+b)^2

f <- function(x,y) z <- (y^2 - x^2) * pi
f(1,2)
print(f(1,2))
ls()
print(ls())
rm(a,b)
ls()

#check
#rm(list = ls())


# Vectors in R
A<-c(2,3,5,7,11)
B<-seq(100,108, by=2)
B
c(A,B) #Combine
A+B #Add
airports<-c("JFK","LGA","EWR","SFO")
length(airports)
airports[4]
airports[-4]
airports[-3]
airports[1:3]
airports[2:3]
airports[c(2,4)]

#Exploratory Analysis
p <- ggplot(sample, aes(winner, error)) #plot all winner and error dots
p + geom_point()

p <- ggplot(sample, aes(winner, error)) + geom_point() 

p <- ggplot(sample, aes(winner, error, colour=factor(victory), size=total))
p + geom_point()

# custome color palette
myPalette <- c("#FF9900", "#0099FF")
p + geom_point() + scale_colour_manual(values=myPalette)

# add label
p <- ggplot(sample, aes(winner, error, colour=factor(victory), size=total, label=player))
p + geom_point() +scale_colour_manual(values=myPalette) + geom_text()

# jitter the label a bit
p + geom_point() +scale_colour_manual(values=myPalette) + geom_text(hjust=-0.2, vjust=1)

# color by match (year), change shape for victory variable
p <- ggplot(sample, aes(winner, error))
p + geom_point(aes(shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), hjust=1.2, vjust=-1)

# split by match, jitter text
p + geom_point(aes(shape=factor(victory), size=total))+ geom_text(aes(colour=factor(year),label=player), position = position_jitter(width=5,height=1.5) )+ facet_grid(~year)


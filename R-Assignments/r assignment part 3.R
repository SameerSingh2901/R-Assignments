# Name - Sameer
###############################################################################################################################
# QUESTION 1

# part a
temp1 <- 1:20
print(temp)

# part b
temp2 <- 20:1
print(temp)

# part c
temp3 <- c(temp1, temp2)
print(c)

# part d
temp4 <- c(4, 6, 3)
print(temp4)

# part e
temp5 <- rep(temp4, 10)
print(temp5)

# part f
temp6 <- rep(temp4, length=31)
print(temp6)

# part g
temp7 <- rep(temp4, times = c(10, 20, 30))
print(temp7)

##############################################################################################################################

# QUESTION 2

x <- seq(3, 6, by = 0.1)
print(x)
print(exp(x)*cos(x))

##############################################################################################################################

# QUESTION 3

#part A
a2 = (0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
print(a2)

# part B
b2 = (2^seq(1,25,by=1))/(seq(1,25))
print(b2)

#############################################################################################################################

# QUESTION 4

# part 1
sum = 0
for (i in 10:100){
  sum = sum + i^3 + 4*i^2
}
print(sum)

# part 2
sum = 0
for (i in 1:25){
  sum = sum + 2^i/i + 3^i/2^i
}
print(sum)

################################################################################################################################

# QUESTION 5

# part A
vec1 <- c(paste(c("label"),1:30,sep = ' '))
print(vec1)

# part B
vec2 <- c(paste(c("fn"),1:30, sep = ''))
print(vec2)

###############################################################################################################################

# QUESTION 6

set.seed(50)
xVec<- sample(0:999, 250, replace = T)
yVec <- sample (0:999, 250, replace = T)

# part A
new_vec2 = yVec[-1]-xVec[-length(xVec)]
print(new_vec2)

# part B
new_vec3 = sin(yVec[-2])/cos(xVec[-1])
print(new_vec3)

# part C
vec4 = (xVec[-3]+2*xVec[-2]-xVec[-1])
print(vec4)

# part D
sum(exp(-xVec[-1])/(xVec[-length(xVec)]+10))

##############################################################################################################################

# QUESTION 7

#part A
for (i in yVec){
  if (i<600){
    print(i)
  }
}

#part B
which(x %in% c(2,4))
for (i in yVec){
  if (i<600){
    print(which(i %in% yVec))
  }
}
# every value has a index of i 

#part C

# part D
xm = mean(xVec)

vec5 = (xVec[-1]-xm)^1.5 ###############
print(vec5)

# part E
sum(yVec>max(yVec)-200)

# part F
sum(xVec%%2==0)

# part G
xVec[order(yVec)]

# part H
yVec[c(T,F,F)]

##############################################################################################################################

# QUESTION 8
1+sum(cumprod(seq(2,38, by = 2)/seq(3,39,by = 2)))

##############################################################################################################################

# QUESTION 9

add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}

divide <- function(x, y) {
  return(x / y)
}

print("******Simple R Calculator - Select operation:")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
num1 = as.integer(readline(prompt="Enter first number: "))
num2 = as.integer(readline(prompt="Enter second number: "))


if (choice == 1){
  add(num1, num2)
} else {
  if (choice == 2){
    subtract(num1, num2)
  } else {
    if (choice == 3 ){
      multiply(num1, num2)
    } else {
      if (choice == 4){
        divide(num1, num2)
      } else {
        print("enter numbers correctly")
      }
    }
  }
}



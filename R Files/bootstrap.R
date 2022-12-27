data <- read.csv(file ="C:/Users/Lab pc/Downloads/weightdata1.csv")
View(data)
names(data)
levels(data$feed)

boxplot(data$Weight~data$Gender, las=1, ylab = "weight(g)", xlab = "Gender", main="weight by gender")

mean(data$Weight[data$Gender=="male"])
mean(data$Weight[data$Gender=="female"])
#alternateway
with(data,tapply(Weight, Gender, mean))
#lets calculate the absolute diff in means
abs(diff(with(data,tapply(Weight, Gender, mean))))

with(data,tapply(Weight, Gender, median))
#lets calculate the absolute diff in medians
abs(diff(with(data,tapply(Weight, Gender, median))))

test.stat2 <- abs(median(data$Weight[data$Gender=="male"]) - median(data$Weight[data$Gender=="female"]))
test.stat2
## Let's take a look at the 3 "Classic" hyp tests we could consider
## each of which comes with their own limitations

#independent 2-sample t-test
t.test(data$Weight~data$Gender, paired=F, var.eq=F)

#wilcoxon aka mann-Whitney U
wilcox.test(data$Weight~data$Gender,paired=F) #tests Ho:medians are equal

#kolmogorov-smirnov 2-sample test
ks.test(data$Weight[data$Gender=="male"],data$Weight[data$Gender=="female"], paired = F)

#############################################################
########### BOOT sTRAP#######################################
##############################################################
set.seed(112358) # for reproducibility
n <-length(data$Gender)
n
B <- 10000   # number of bootstrap samples
variable <- data$Weight   #variable we will reample from

# now get bootstrap samples ( without loops!)
BootstrapSamples <- matrix(sample(variable,size=n*B, replace=TRUE), nrow=n,ncol=B)
dim(BootstrapSamples)


#initialize the vector to store the TEST-STATS
Boot.test.stat1 <- rep(0,B)
Boot.test.stat2 <- rep(0,B)
for (i in 1:B) {
  #calculate the boot-test-stat1 and save it
  Boot.test.stat1[i] <- abs(mean(BootstrapSamples[1:12,i]) - 
                              mean(BootstrapSamples[13:23,i]))
  #calculate the boot-test-stat2 and save it
  Boot.test.stat2[i] <- abs(median(BootstrapSamples[1:12,i]) - 
                              median(BootstrapSamples[13:23,i]))
}

#OBSERVED TEST STATS
test.stat1;test.stat2


round(Boot.test.stat1[1:20],1)
round(Boot.test.stat2[1:20],1)

(Boot.test.stat1 >=test.stat1)[1:20]
mean(Boot.test.stat1 >=test.stat1)

mean(Boot.test.stat2 >= test.stat2)
table(data$Gender)

plot(density(Boot.test.stat2),
     xlab=expression(group("|", bar(Yc)-bar(Ym),"|")))

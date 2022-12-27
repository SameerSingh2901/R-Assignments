# lungs data
lungdata <- read.csv(file = 'D:/College/Datasets_csv_files/lungcapdata.csv')
View(lungdata)
attach(lungdata)
names(lungdata)
# Ho : mu <  8 + 95% confidence interval

t.test(LungCap,mu = 8, alt = 'less', conf.level = 0.95)
#
t.test(LungCap, mu = 8, alt = 'two.sided', confint = 0.95)
#
t.test(LungCap, mu = 8, alt = 'two.sided', confint = 0.90)
#
boxplot(LungCap~Smoke)
#
#Ho : mean of smokers = non smokers

#assumption - non equal varience
t.test(LungCap ~ Smoke, mu = 0, alt = 'two.sided', paired = FALSE, conf.level = 0.95)

t.test(LungCap ~ Smoke)
t.test(LungCap[Smoke == 'no'], LungCap[Smoke == 'yes'])
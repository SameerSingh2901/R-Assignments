library(tidyverse)
library(ggplot2)
dataset()
view(mpj)
?mpg

ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ , y=cty))+
  labs(title="city miles according to displacement of engine ", 
       caption="Source: 'mpg' dataset",
       y="city miles per gallon")+
  theme(plot.background=element_rect(fill="cyan"))

ggplot(data=mpg ,aes(x=manufacturer,y=cty ))+
  geom_bar(stat = "identity",width = 0.5, fill="tomato2")+
  labs(title="Manufacturer of vehicles", 
       caption="Source: Frequency of Manufacturers from 'mpg' dataset",
       y="city miles per gallon")

ggplot(mpg, aes(x = cty)) +
  theme_bw()+
  geom_histogram(binwidth = 7,color="black", fill="lightgreen")+
  labs(title = "Car Mileage distribution",
       x="city miles per gallon",
       y="count of car models")+
  theme(plot.background=element_rect(fill="darkseagreen"))+
  theme(plot.title = element_text(size=20, face="bold"))

ggplot(mpg, aes(x = class, y = cty )) +
  geom_boxplot(fill="black")+
  labs(title="city Mileage grouped by Class of Vehicle",
       caption="Source: mpg",
       x="Class of vehicle",
       y="city Miles per Gallon")+
  theme(plot.background=element_rect(fill="lightblue"))

`ggplot(mpg, aes(cty))+
  geom_density(aes(fill=factor(cyl)), alpha=0.7) + 
  labs(title="City Mileage grouped by Number of cylinders",
       caption="Source: mpg",
       x="City Mileage",
       fill="No. of Cylinders")

`
 

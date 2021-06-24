library(distill)
library(tidyverse)
library(ggthemes)
car_plot<-mtcars %>% 
  select(mpg,wt) %>% 
  ggplot(aes(wt,mpg))+
  geom_point()+
  geom_smooth(method="lm",formula=y~x,se=F)+
  theme_clean()+
  labs(title="Fuel Efficiency and Weight", subtitle = "Heavier cars are less fuel efficient",x="Weight (1000s of lbs)", y="MPG", caption="Henderson and Vellerman (1981)")
write_rds(car_plot,"car_plot.rds")


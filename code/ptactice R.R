library('tidyverse')
library(tidyverse)
 gapminder_1997 <- read_csv("un-report/gapminder_1997.csv")
 getwd()
 str(gapminder_1997)
 
?read_csv
sum(5,6)
round(3.1415,3)
round(2,3.1415)
round(x = 3.1415, digits = 2)
read_csv<read_csv("un-report/co2-un-data.csv")
getwd()
plo
library(ggplot2)

ggplot(data = gapminder_1997)+
  aes(x=gdpPercap)+
 labs(x="GDP Per Capital")+
   aes(y=lifeExp)+
   labs(y="Life Expectancy")+
   geom_point()+
labs(title = "Do people in wealthy countries live longer?") +
  aes(color= continent) +
  scale_color_brewer(palette = "Set1")+
  aes(size=pop/1000000)
labs(size="Population(in millions)")

ggplot(data=gapminder_1997) +
  aes(x=gdpPercap,y=lifeExp,color=continent,size=pop/1000000)+
  geom_point()+
  scale_color_brewer(palette = "Set1") +
  labs(x="GDP Per Capital", y="Life Expectancy",
  title="Do people in wealthy countries live longer?",
 size="Population(in millions)")

load in a larger data set

gapminderdata <-read_csv("un-report/gapminder_data.csv")

dim(gapminder_data) 

ggplot(gapminderdata) +
  aes(x=year, y=lifeExp, group=country, color=continent)+
  geom_line()

#discrete plots
ggplot(data = gapminder_1997)+
  aes(x=continent,y=lifeExp)+
  geom_violin()+
geom_point()


ggplot(data = gapminder_1997)+
  aes(x=continent,y=lifeExp)+
geom_boxplot()
geom_point()

ggplot(data = gapminder_1997)+
  aes(x=continent,y=lifeExp)+
  geom_violin()+
  geom_jitter()

ggplot(data = gapminder_1997)+
  aes(x=continent,y=lifeExp)+
  geom_jitter()+
  geom_violin()

#master aesthetics

ggplot(data = gapminder_1997, aes(x=continent,y=lifeExp))+
  geom_violin()+
  geom_jitter(aes(size=pop), color="pink")


ggplot(data = gapminder_1997, aes(x=continent,y=lifeExp))+
  geom_violin(aes(fill=continent))
  

ggplot(data = gapminder_1997, aes(x=continent,y=lifeExp))+
  geom_violin(fill="springgreen")


#univariate plots


ggplot(gapminder_1997)+
  aes(x=lifeExp)+
  geom_histogram(bins=20)

#plot themes
ggplot(gapminder_1997)+
  aes(x=lifeExp)+
  geom_histogram(bins = 20)+
  theme_classic()+
  theme(axis.text.x=
          element_text(angle = 90,
                       vjust = 0.5
                       ,hjust = 1))

#facet wrap

ggplot(gapminder_1997)+
  aes(x=gdpPercap, y=lifeExp)+
  geom_point()+facet_wrap(vars(continent))

#fact grid
awsome_plot<-ggplot(gapminder_1997)+
  aes(x=gdpPercap, y=lifeExp)+
  geom_point()+
facet_grid(rows=vars(continent))

ggsave(awesome_plot,file="awsome_plot.jpg",
       width = 6,
       height = 4)

#exercise
#violin plot of continent and life expectancy
#color mapped to continent
#assigned to an object "violin_plot"
#-balck and white theme
#-save it as "awesome_violin_plot.jpg"

awesome_violin_plot<-ggplot(data = gapminder_1997, aes(x=continent,y=lifeExp))+
  geom_violin(aes(fill=continent))+
  theme_bw()
  
ggsave(awesome_violin_plot,file="awsome_violin_plot.jpg",
                 width = 6,
                 height = 4)

awesome_violin_plot
view(awesome_violin_plot)

violin_plot<-ggplot(data=gapminder_1997)+
  aes(x=continent,y=lifeExp)+
  geom_violin(aes(color=continent))+
  theme_bw()
violin_plot
 ggsave(violin_plot, file="awesome_violin_plot.jpg")











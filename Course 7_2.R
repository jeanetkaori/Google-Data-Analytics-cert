id <- c(1:10)

name <- c("John Mendes","Rob Stewart","Rachel Arahamson", "Christy Hickman","Johnson Harper", "Candace Miller","Carlson Landy","Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional","Programmer","Management","clerical","Developer", "Programmer", "Management","clerical","Developer","Programmer")
employee <- data.frame(id, name, job_title)
print(employee)

separate(employee, name, into=c('first_name', 'last_name'), sep=' ')

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
employee <- data.frame(id, first_name, last_name, job_title)

unite(employee, 'name', first_name, last_name, sep=' ')


install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quatet)
head(quartet)

quartet %>% 
  group_by(set) %>% 
  summarise(mean(x), sd(x),mean(y),sd(y), cor(x,y))

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset))+geom_point()+theme_void()+theme(legend.position="none")+facet_wrap(~dataset,ncol=3)


## The Bias Function
install.packages("SimDesign")
library(SimDesign)

actual_temp <- c(68.3, 70, 72.4, 71, 67,70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)

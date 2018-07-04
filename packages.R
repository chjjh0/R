# Alternatively, install just ggplot2:
install.packages("ggplot2")
library(ggplot2)

# manufacturer
# model
# model name
# 
# displ
# engine displacement, in litres
# 
# year
# year of manufacture
# 
# cyl
# number of cylinders
# 
# trans
# type of transmission
# 
# drv
# f = front-wheel drive, r = rear wheel drive, 4 = 4wd
# 
# cty
# city miles per gallon
# 
# hwy
# highway miles per gallon
# 
# fl
# fuel type
# 
# class
# "type" of car

read.csv(file = "C:\\Users\\1027\\R\\2013년_전년대비_도로종류별_교통사고_발생건수.csv")

x <- c("2", "2", "3", "1", "4", "4", "4", "4")
qplot(x)
rm(x)
# data = mpg, x축에 변수 지정해 그래프 생성
qplot(data = mpg, x = hwy)
# x 축 cty
qplot(data = mpg, x = cty)

# mpg 데이터를 데이터 프레임으로 만듬
mpg <- as.data.frame(ggplot2::mpg)

head(mpg)
tail(mpg)
dim(mpg)
str(mpg)
summary(mpg)
# 통합 연비 변수 생성
mpg$total <- (mpg$cty + mpg$hwy) / 2
mpg$total
summary(mpg)
mean(mpg$total)
hist(mpg$total)
# total 연비의 평균과 중앙값이 약 20
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20)
table(mpg$test)
input_mpgtest <- data.frame(mpg$test)
qplot(input_mpgtest)

mpg$grade <- ifelse(
  mpg$total >= 30, "A",
  ifelse(mpg$total >= 20, "B", "C")
)
  
head(mpg$grade)  
table(mpg$grade)
qplot(mpg$grade)
mpg$grade <- ifelse(
  mpg$total >= 30, "A",
    ifelse(mpg$total >= 20, "B",
  ifelse(mpg$total >= 10, "C", "D" )))



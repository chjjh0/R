install.packages("dplyr")
library(dplyr)
path <-getwd()
path
setwd("csv_exam")
df_exam <- read.csv("csv_exam.csv")
df_exam

View(df_exam)


## df_exam <- read.csv("csv_exam.csv", stringAsFactors = F)
## 문자가 들어있는 파일을 불러올때는 stringAsFactors = F
## 를 넣어줄것. 지정하지 않으면 문자요소는 factor 로
## 전환 됨. 숫자는 전환 되지 않음

## dplyr
# filter() 행추출
# select() 열추출
# arrange() 정렬
# mutate() 변수추가
# summarise() 통계치산출
# group_by() 집단별로 나누기
# left_join() 데이터합치기(열)
# bind_rows() 데이터합치기(행)
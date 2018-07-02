print(
  seq(from=1,to=10,by=2)
)
print(
  seq(from=1,length=10,by=2)
)
print(
  seq(1,10,2)
)
print(
  rep(1:5)
)
print(
  rep(1:5,each=2)
)
print(
  rep(1:5,times=2)
)
print(
  rep(1:5, each=2,times=3)
)
print(
  rep(1:5, each=2, length=5)
)

x <- c(1:10)
sum(x<-seq(length=100, from=1, by=1))

# 가위바위보
#ver1
# ifelse(my == 0 && com == 2, print("승리"), ifelse(my == 0 && com == 1, print("패배"), print("비김")))
# if(my == 0 && com == 2)  print("승리")
#   if(my == 0 && com == 1) print("패배")  else print("비김")
# result <- "패"
my <- function(){
  com <- sample(0:2, 1, replace = TRUE)
  print("가위: 0, 바위: 1, 보: 2")
  sel <- as.numeric(readline())
  if((sel-com) %in% c(-2, 1)){
    result <- "승"
  } else if(sel-com == c(0)){
    result <- "무"
  } else {
    result <- "패"
  }
  cat("com:", com, "result", result)
}
my()

## 성적표 ver01
myGrade <- function(){
  print("0~100 사이의 점수를 입력하세요")
  score <- as.numeric(readline())
  if(score<=100 & score>=90){
    grade <- "A"
  }else if(score<90 & score>=80){
    grade <- "B"
  } else {
    grade <- "C"
  }
  cat("성적은", grade, "입니다")
}
myGrade()

## 성적표 ver02
myGrade2 <- function(){
  print("0~100 사이의 점수를 입력하세요")
  score <- as.numeric(readline())
  ifelse(score<=100 & score>=90, grade <- "A",
      ifelse(score<90 & score>=80, grade <- "B", grade <- "C"))
  cat(grade)
}
myGrade2()


## 가위바위보2
user <- 2
print(switch(
  toString(sample(1:3,1,replace = TRUE) - user),
  '-2' = "승리",
  '1' = "승리",
  '-1' = "패배",
  '2' = "패배",
  '0' = "비김"
))

##계산기
print("연산자를 입력하세요")
opcode <- as.character(readline())
opcode
opcode <- as.character(readline())

num1 <- 1
num2 <- 2
print(num1 * num2)
calc <- function(){
  print("1~10 사이의 수를 입력하세요")
  num1 <- as.integer(readline())
  print("1~10 사이의 수를 입력하세요")
  num2 <- as.integer(readline())
  print("연산자를 입력하세요")
  opcode <- as.character(readline())
  print(switch(toString(opcode)),
  '+' (num1 + num2),
  '-' (num1 - num2),
  '*' (num1 * num2),
  '%' (num1 %% num2),
  '%/' (num1 %/% num2) 
  )
}
calc()

##loop
##ver1
num <- c(1:5)
cnt <- 1
length(num)
repeat{
  if(cnt==5){
    cat(num[cnt], "=", sum(num))
    break
  } else {
    cat(num[cnt], "+ ")
  }
    cnt <- cnt+1
}
##ver2
num <- c(1:5)
for(v in num){
  ifelse(v==5){
    cat(num[v], "=", sum(num))
    break
  } else {
    cat(num[v], "+ ")
  }
}
##1~100까지 홀수일때 '-' 짝수일때 '+'
for(e in 1:100){
  if(e==100)
    cat(e, "=", sum(e))
  switch(toString(e %% 2),
    '1' = cat(e, "-"),
    '0' = cat(e, "+"),
    )
}
##이름, 국/영/수, 이름/총점/평균/등급
myGrade3 <- function(){
  subject <- c("국어", "영어", "수학")
  i <- 1
    print("이름을 입력하세요")
    name <- as.character(readline())
    for(s in subject){
      cat(s, "점수를 입력하세요")
      score[i] <- as.integer(readline())
      i <- i+1
    }
  total <- sum(score)
  avg <- total/length(score)
  ifelse(avg<=100 & avg>=90, grade <- "A",
       ifelse(avg<90 & avg>=80, grade <- "B", grade <- "C"))
  cat("이름: ", name, "총점: ", total, "평균: ", avg, "등급: ", grade)
}
myGrade3()



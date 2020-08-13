  #1(a)
  a = 3
  b = 1
  c = 1
  d = 0
  while (a < 37){
    d=b+c+2*a
    b=c
    c = d
    a = a + 1
  }
  print(d)
  
  #1(b)
  
  print(choose(88,44))
  
  #1(c) divisor
  a=1
  b=0
  while(a<12306){
    if(12306%%a==0&&32148%%a==0){
      b=a
    }
    else{
    }
      a=a+1
  }
  print(b)
  
  #1(c) multiple
  a=12306*32148
  b=32148
  c=0
  while(a>b){
    if(a%%12306==0&&a%%32148==0){
      c=a
    }
    else{
    }
    a=a-6
  }
  print(c)
  print(a/6)#另一种做法，倍数除以最大公因数
  
  #2(a)
  who<-read.csv("WHO.csv")
  a=ncol(who)
  b=names(who)
  i=1
  while(i<=a){
    if(sum(is.na(who[,i]))>=3){
      print(b[i])
    }
    i=i+1
  }
  
  #2(b)
  print(who$Country[which.max(who$FertilityRate)])
  print(who$Country[which.min(who$FertilityRate)])
  
  #2(c)
  print(who$Region[which.min(sd(who$GNI, na.rm = TRUE))])
  a=subset(who,Region=who$Region[which.min(sd(who$GNI, na.rm = TRUE))])
  print(sd(a$FertilityRate,na.rm = TRUE))
  
  #2(d)
  b=subset(who,GNI>20000)
  print(mean(b$ChildMortality,na.rm = TRUE))
  
  #2(e)
  plot(who$GNI,who$LifeExpectancy,xlab="GNI", ylab = "Life")
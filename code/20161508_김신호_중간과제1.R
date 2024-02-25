library(magick)
ball <- image_read("gong.png")
table <- image_read("table.png")
ball <- image_scale(ball, "40x40!")
table <- image_scale(table, "300x400!")
x <- 0
y <- 0
while(TRUE){
  position <- paste("+", x, "+", y, sep="")
  img <- image_composite(table, ball, offset=position)
  print(img)
  Sys.sleep(0.1)
  x <- x+10
  y <- y+10
  print(x)
  print(y)

  # X, Y의 위치 변환: 시작
  if(x==270 && y==270){
    while (y < 370) {
      position <- paste("+", x, "+", y, sep="")
      img <- image_composite(table, ball, offset=position)
      print(img)
      Sys.sleep(0.1)
      x <- x-10
      y <- y+10
      print(x)
      print(y)
    }
  }
  if(x==170 && y==370){
    while(x > 0){
      position <- paste("+", x, "+", y, sep="")
      img <- image_composite(table, ball, offset=position)
      print(img)
      Sys.sleep(0.1)
      x <- x-10
      y <- y-10
      print(x)
      print(y)
    }
  }
  if(x==0 && y==200){
    while(y > 0){
      position <- paste("+", x, "+", y, sep="")
      img <- image_composite(table, ball, offset=position)
      print(img)
      Sys.sleep(0.1)
      x <- x+10
      y <- y-10
      print(x)
      print(y)
    }
  }
  if(x == 200 && y == 0){
    break
  }
  # X, Y의 위치 변환: 끝
}


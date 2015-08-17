Ball myBall;
Ball secondBall;
Ball thirdBall;

void setup(){
  size(800, 600);
  myBall = new Ball(200, 585, 485);
  secondBall = new Ball(400, 585, 385);
  thirdBall = new Ball(600, 585, 285);
}

void draw(){
  background(39);

  if(keyPressed == true){
    myBall.bounce();
    secondBall.bounce();
    thirdBall.bounce();
  }
}
int i, j;
float d;
float x, y;

void setup(){
  size(400, 400);
  frameRate(5);
//  background(255, 255, 255);
}

void draw(){
  x = random(40, 340);
  y = random(40, 340);
  d = dist(x, y, width/2, height/2);
  background(255, 255, 255);
  for (i = 30; i <= 360; i += 10){
    noStroke();
    fill(243, 69, 109);
    rect(i, 40, 5, 3);
  }
  for (j = 30; j<= 360; j += 10){
    noStroke();
    fill(244, 153, 48);
    rect(40, j, 3, 5);
  }
  for (i = 30; i <= 360; i += 10){
    noStroke();
    fill(243, 69, 109);
    rect(i, 350, 5, 3);
  }
  for (j = 30; j<= 360; j += 10){
    noStroke();
    fill(244, 217, 97);
    rect(350, j, 3, 5);
  }
  if (d <= 340){
    fill(243, 229, 154);
    ellipse(x, y, 20, 20);
  }
  else {
    fill(242, 156, 156);
    ellipse(x, y, 20, 20);
  }
  stroke(244, 217, 97);
  strokeWeight(3);
  noFill();
  ellipse(width/2, height/2, 360, 360); 
}


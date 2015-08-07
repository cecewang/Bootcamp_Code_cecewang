float x, y;
float x1, y1, x2, y2;
float x3, y3;
float radius;
float speed = 0.02;
float size;

boolean change;

void setup(){
  size(800,800);
  size = width/4;
}

void draw(){
  fill(0, 10);
  rect(0, 0, 800, 800);
  noStroke();
  
  //Left Blue Circle
  fill(35, 171, 255);
  x = width/2 - abs(sin(frameCount * speed)) * size;
  y = height/2 + cos(frameCount * speed) * size;
  ellipse(x, y, 40, 40);
  
  //Right Red Circle
  fill(253, 0, 10);
  x = width/2 + abs(sin(frameCount * speed)) * size;
  y = height/2 - cos(frameCount * speed) * size;
  ellipse(x, y, 40, 40);
  
  //Left Inner Circle 
  fill(35, 171, 255);
  x1 = width/2 - abs(sin(frameCount * speed)) * size /2;
  y1 = 300 + cos(frameCount * speed) * size/2;
  ellipse(x1, y1, 20, 20);

  //Right Inner Circle 
  fill(253, 0, 10);
  x2 = width/2 + abs(sin(frameCount * speed)) * size /2;
  y2 = 500 - cos(frameCount * speed) * size/2;
  ellipse(x2, y2, 20, 20);
  
  //Left Core Circle
  fill(35, 171, 255);
  radius = 20 - 20 * cos(frameCount * speed);
  ellipse(300, 400, radius, radius);

  //Right Core Circle
  fill(253, 0, 10);
  radius = 20 - 20 * cos(frameCount * speed);
  ellipse(500, 400, radius, radius);

}


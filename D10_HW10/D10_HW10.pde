PImage earth;
PImage rocket;
PVector position;
PVector velocity;
PVector gravity;
Boolean noGravity = false;

float counterX;
float counterY;

void setup(){
  size(600, 600);
  earth = loadImage("earth.png");
  rocket = loadImage("rocket.png");
  
  position = new PVector(width/2-15, 120);
  velocity = new PVector(0, 0);
  gravity = new PVector(0, 00);
  
}

void draw(){
  background(39);
  image(earth, (width/2-150), (height/2-150));
  
  noStroke();
  fill(255);
  image(rocket, position.x, position.y);
  
  if (noGravity == false){
    if(mousePressed){
    position.add(velocity);
    velocity.add(gravity);
    }
    if(position.y > 20 && position.y <= 120){
      position.y ++;
    }
  }
  if(position.y < 20){
    noGravity = true;
  }
  if(noGravity == true){
    counterX++;
    counterY++;
     position.x = width/2 + 280*sin(counterX*0.01);
     position.y = height/2- 280*cos(counterY*0.01);
  }
}

//}



void mousePressed(){
 velocity.y = -10;
}
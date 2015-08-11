PImage pigeon[][] = new PImage [10][8];
PImage person = loadImage("Person.png");
int i, j, n;

void setup(){
  size(700, 500);
}

void draw(){
  background(255);
  for (i = 0; i < 9; i++){
    for (j = 0; j < 7; j++){
      if (i % 3 == 0){
        pigeon[i][j] = loadImage("Pigeon.png");
      }
      else if (i % 3 == 1){
        pigeon[i][j] = loadImage("Pigeon2.png");
      }
      else {
        pigeon[i][j] = loadImage("Pigeon3.png");
      }
//pigeon[i][j] = loadImage("Pigeon2.png");
      
        if (dist(mouseX, mouseY, (i*70+50), (j*50+100)) < 30 && ((j*50+100) < mouseY) && ((i*70+50) < mouseX)){
          image(pigeon[i][j], (i*70+20), (j*50+70));
        }
        else if(dist(mouseX, mouseY, (i*70+50), (j*50+100)) < 30 && ((j*50+100) > mouseY) && ((i*70+50) > mouseX)){
          image(pigeon[i][j], (i*70+80), (j*50+130));
        }
        else if(dist(mouseX, mouseY, (i*70+50), (j*50+100)) < 30 && ((j*50+100) < mouseY) && ((i*70+50) > mouseX)){
          image(pigeon[i][j], (i*70+20), (j*50+130));
        }
        else if(dist(mouseX, mouseY, (i*70+50), (j*50+100)) < 30 && ((j*50+100) > mouseY) && ((i*70+50) < mouseX)){
          image(pigeon[i][j], (i*70+80), (j*50+70));
        }
        else {
          image(pigeon[i][j], (i*70+50), (j*50+100));
        }
    }
  }
  textSize(20);
      fill(23);
      textSize(20);
      text ("Welcome to Union Sqaure", 240, 70);
      
  image(person, mouseX, mouseY);    


}
